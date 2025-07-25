// script.js

// --- Configuration ---
const SVG_WIDTH = document.getElementById('branchingTree').width.baseVal.value;
const SVG_HEIGHT = document.getElementById('branchingTree').height.baseVal.value;
const NODE_RADIUS = 5;
const NODE_SPACING_X = 20; // Horizontal spacing between nodes in a generation
const GENERATION_SPACING_Y = 60; // Vertical spacing between generations

let currentSimulation = null; // To hold the interval ID for animation control

// --- DOM Elements ---
const generationsInput = document.getElementById('generations');
//const offspringMeanInput = document.getElementById('offspringMean');
//const animationSpeedInput = document.getElementById('animationSpeed');
const startButton = document.getElementById('startSimulation');
const resetButton = document.getElementById('resetSimulation');
const svg = document.getElementById('branchingTree');

// --- Tree Data Structure (Node Class) ---
class Node {
    constructor(id, parentId = null, generation = 0, position = { x: 0, y: 0 }) {
        this.id = id;
        this.parentId = parentId;
        this.children = [];
        this.generation = generation;
        this.position = position;
        this.isVisible = false; // For animation, nodes appear gradually
        this.isAnimating = false;
    }
}

// --- Branching Process Logic ---
function getOffspringCount() {
    // Example: A simple distribution, adjust probabilities for different behaviors
    const rand = Math.random();
    if (rand < 0.2) return 0; 
    if (rand < 0.7) return 1; 
    if (rand < 0.9) return 2; 
    return 3;                
}

var maxGen;
function simulateBranchingProcess(maxGenerations) {
    maxGen = maxGenerations;
    let nodes = new Map(); // Store nodes by ID for easy access
    let nextNodeId = 0;
    let generationData = []; // Array to store nodes for each generation

    // Initial individual
    const rootNode = new Node(nextNodeId++, null, 0, { x: SVG_WIDTH / 2, y: GENERATION_SPACING_Y });
    nodes.set(rootNode.id, rootNode);
    generationData.push([rootNode]);

    for (let gen = 0; gen < maxGenerations; gen++) {
        const currentGenerationNodes = generationData[gen] || [];
        const nextGenerationNodes = [];

        currentGenerationNodes.forEach(parentNode => {
            // Simulate offspring count (using Poisson distribution approximation for simplicity)
            const numOffspring = getOffspringCount();

            for (let i = 0; i < numOffspring; i++) {
                const childNode = new Node(nextNodeId++, parentNode.id, gen + 1);
                parentNode.children.push(childNode.id);
                nodes.set(childNode.id, childNode);
                nextGenerationNodes.push(childNode);
            }
        });
        if (nextGenerationNodes.length > 0) {
            generationData.push(nextGenerationNodes);
        } else {
            // If no offspring, stop generating
            break;
        }
    }
    return { nodes, generationData };
}

// --- Layout Calculation ---
// This is a simplified layout. For complex trees, consider a force-directed layout or a hierarchical layout algorithm.
function calculateNodePositions(generationData) {
    const totalGenerations = generationData.length;

    generationData.forEach((genNodes, genIndex) => {
        const numNodesInGen = genNodes.length;
        if (numNodesInGen === 0) return;

        // Calculate initial x-position for the first node in the generation
        const startX = SVG_WIDTH / 2 - (numNodesInGen - 1) * NODE_SPACING_X / 2;
        const y = (genIndex + 1) * GENERATION_SPACING_Y;

        genNodes.forEach((node, nodeIndex) => {
            node.position.x = startX + nodeIndex * NODE_SPACING_X;
            node.position.y = y;
        });
    });
}

// --- SVG Drawing and Animation ---
function drawTree(nodesMap, generationData, currentGenerationToDisplay) {
    // Clear previous drawings
    svg.innerHTML = '';

    const nodesToDraw = [];
    const linksToDraw = [];

    // Collect nodes and links up to the current generation
    for (let i = 0; i <= currentGenerationToDisplay && i < generationData.length; i++) {
        generationData[i].forEach(node => {
            node.isVisible = true; // Mark nodes as visible for drawing
            nodesToDraw.push(node);

            // Add links from parent to child
            node.children.forEach(childId => {
                const childNode = nodesMap.get(childId);
                if (childNode) {// && childNode.isVisible) { // Only draw link if child is also visible
                    linksToDraw.push({
                        source: node.position,
                        target: childNode.position
                    });
                }
            });
        });
    }

    // Draw links first (so nodes appear on top)
    linksToDraw.forEach(link => {
        const line = document.createElementNS("http://www.w3.org/2000/svg", "line");
        line.setAttribute("x1", link.source.x);
        line.setAttribute("y1", link.source.y);
        line.setAttribute("x2", link.target.x);
        line.setAttribute("y2", link.target.y);
        line.classList.add("link");
        svg.appendChild(line);
    });

    // Draw nodes
    nodesToDraw.forEach(node => {
        const circle = document.createElementNS("http://www.w3.org/2000/svg", "circle");
        circle.setAttribute("cx", node.position.x);
        circle.setAttribute("cy", node.position.y);
        circle.setAttribute("r", NODE_RADIUS);
        circle.classList.add(node.generation<maxGen && node.children.length==0? "nodestop":"node");
        circle.setAttribute("id", `node-${node.id}`); // For potential future interaction/animation
        svg.appendChild(circle);

    });
}

// --- Animation Loop ---
function animateBranchingProcess(simulationData, maxGenerations, animationSpeed) {
    let currentGen = 0;

    function frame() {
        if (currentGen <= maxGenerations) {
            drawTree(simulationData.nodes, simulationData.generationData, currentGen);
            currentGen++;
            currentSimulation = setTimeout(() => requestAnimationFrame(frame), animationSpeed);
        } else {
            console.log("Animation finished.");
            currentSimulation = null; // Clear the timer ID
        }
    }
    requestAnimationFrame(frame);
}

// --- Event Handlers ---
function doit() {
    if (currentSimulation) {
        clearTimeout(currentSimulation); // Stop any ongoing simulation
        currentSimulation = null;
    }

    const generations = parseInt(generationsInput.value);
    //const offspringMean = parseFloat(offspringMeanInput.value);
    const animationSpeed = 500;//parseInt(animationSpeedInput.value);

    const simulationResult = simulateBranchingProcess(generations);
    calculateNodePositions(simulationResult.generationData); // Calculate positions before animating
    console.log("Simulation Result:", simulationResult); // For debugging
    animateBranchingProcess(simulationResult, generations, animationSpeed);
}


// Initial draw (empty canvas)
drawTree(new Map(), [], -1);
