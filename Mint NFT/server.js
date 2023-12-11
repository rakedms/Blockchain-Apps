const express = require('express');
const path = require('path');
const app = express();

app.get("/", (req,res) =>{
    res.sendFile(path.join(__dirname+"/index.html"))
})

const server = app.listen(8000);
const portnumber = server.address().port;
console.log(`server is running in port ${portnumber}`);