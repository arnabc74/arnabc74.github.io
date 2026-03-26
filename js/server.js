const express = require("express");
const cors = require('cors')

const app = express();
const PORT = 3000;

// allow JSON body parsing
app.use(cors())
app.use(express.json());

app.post("/process", (req, res) => {

    // JSON received from client
    const clientData = req.body;

    console.log("Received from client:", clientData);

    // compute something on the fly
    const result = {
        originalName: clientData.name,
        originalValue: clientData.value,
        squaredValue: clientData.value * clientData.value,
        timestamp: new Date().toISOString()
    };

    // send computed JSON
    res.json(result);
});

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});

