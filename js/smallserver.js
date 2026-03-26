const http = require('http');


function work(input, output) {
    console.log("Hello")
    output.end("OK")
}
                
const server = http.createServer(work);

server.listen(3000)


