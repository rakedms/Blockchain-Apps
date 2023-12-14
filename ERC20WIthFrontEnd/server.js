const express = require ('express');
const path = require('path');

const app = express();
const port = 8000; // Set your desired port number

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

const server = app.listen(port, (error) => {
    if (error) {
        console.error('Error starting the server:', error);
    } else {
        console.log(`Server is running on port ${port}`);
    }
});
