const express = require('express');
const port = process.env.PORT || 3000;
const app = express();

app.get("/", (req, res) => {res.send("hello world");});
 
app.listen(port, () => {console.log("rodando na porta ", port)});

