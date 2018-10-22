const express = require("express");
const mongoose = require("mongoose");

const app = express();

mongoose
    .connect("mongodb://mongo:27017/test")
    .then(() => {
        console.log("connected");
    })
    .catch(err => {
        console.log("could not connect" + err);
    });

app.get("/", (req, res) => {
    res.sendFile(__dirname+'/index.html');
    
});

app.get("/test",(req,res)=>{
    res.send("test sucesss")
})
app.listen(3000, () => {
    console.log("Listening at 3000");
});
