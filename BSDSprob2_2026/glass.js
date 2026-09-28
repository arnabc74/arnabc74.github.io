// canvas setup

var active = true
let canvas = document.getElementById("brd")//document.createElement('canvas')
let context = canvas.getContext('2d')

canvas.width = document.body.clientWidth
canvas.height = document.body.clientHeight

// create a black background
context.fillStyle = '#000000'
//context.fillRect(0, 0, canvas.width, canvas.height)


//document.body.appendChild(canvas)

// color picker
var cIndex = 0;
let colors = [
    '#FFFFFF',
    '#FFFF55',
  '#ff0000',
  '#4F2CED',
  '#2CEDD4',
  '#4EED2C',
  '#EDCE2C',
  '#ED712C',
  '#ED2C2C'
]

let selectedColor = colors[0]
let colorTiles = []

function createMenu() {
  colors.forEach((val, index) => {
    colorTiles.push({
      color: colors[index],
      x: 0,
      y: canvas.height / colors.length * index,
      width: 100,
      height: canvas.height / colors.length
    })
  })

  colorTiles.forEach((val, index) => {
    context.fillStyle = val.color
    context.fillRect(val.x, val.y, val.width, val.height)
  })
}

//createMenu()

// stored paths

let paths = []

// mouse movements

let isDrawing = false
let currentPath = {
  color: '',
  start: {},
  movement: [],
}

function startDrawingFrom(x,y) {
    isDrawing = true
    context.beginPath()
    context.moveTo(x, y)
    currentPath.color = colors[cIndex]
    currentPath.start.x = x
    currentPath.start.y = y
    penUpTimer = setTimeout(finishDrawing,500)
}

document.addEventListener('mousedown', (e) => {
  let rect =   canvas.getBoundingClientRect();
    let x = e.clientX - rect.left
  let y = e.clientY - rect.top
    startDrawingFrom(x,y)
})

document.addEventListener('mousemove', (e) => {
    if(!isDrawing) {
          let rect =   canvas.getBoundingClientRect();
        currX = e.clientX - rect.left
        currY = e.clientY - rect.top
        return
    }
    clearTimeout(penUpTimer)
        context.strokeStyle = colors[cIndex]
    context.lineWidth = 6
      let rect =   canvas.getBoundingClientRect();
    context.lineTo(e.clientX-rect.left, e.clientY-rect.top)
      context.stroke()
      currentPath.movement.push({
          x: e.clientX-rect.left,
        y: e.clientY-rect.top
      })
    penUpTimer = setTimeout(finishDrawing,500)
})

function finishDrawing() {
      isDrawing = false
  if(currentPath.movement.length > 0) {
    paths.push(currentPath)
    currentPath = {
      color: '',
      start: {},
      movement: []
    }
  }
}
/*
document.addEventListener('mouseup', (e) => {
    if(!active) return
    finishDrawing()
})
*/
// keyboard events

document.addEventListener('keydown', (e) => {
    //alert(e.keyCode)
    switch(e.keyCode) {
    case 32:
        console.log("isDrawing = "+isDrawing)
        if(!isDrawing) startDrawingFrom(currX, currY)
        break
    case 78: // n
      paths=[]
      reload()
      break
    case 90: // z
      undo()
      break

  case 37: // left
      cIndex--;
      if(cIndex<0) cIndex = colors.length-1;
      break;
  case 39: // right
      cIndex++;
      if(cIndex>=colors.length) cIndex = 0
      break;
  }
})

// utilites

function undo() {
  if(!isDrawing) {
    paths.splice(-1, 1)
    reload()
  }
}

function reload() {
    // set screen to black
    context.clearRect(0, 0, canvas.width, canvas.height)
    /*
  context.fillStyle = '#000000'
  context.fillRect(0, 0, canvas.width, canvas.height)
*/
  if(paths.length > 0) {
    // loop each path and draw to screen
    paths.forEach((val, index) => {
      context.beginPath()
      context.moveTo(val.start.x, val.start.y)
      val.movement.forEach((v1, i1) => {
        context.strokeStyle = val.color
        context.lineTo(v1.x, v1.y)
        context.stroke()
      })
    })
  }

  //createMenu()
}

function newCanvas() {
  paths = []

  // set screen to black
  context.fillStyle = '#000000'
  //context.fillRect(0, 0, canvas.width, canvas.height)
  
  //createMenu()
}
