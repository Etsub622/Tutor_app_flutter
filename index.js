const express=require('express');
const authRouter=require('./route/auth');
const cors = require("cors");
const mongoose=require('mongoose');
const adminRouter = require('./route/admin');


const app=express();
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(cors());


const deta="mongodb://127.0.0.1:27017/registration";

mongoose.connect(deta, { useNewUrlParser: true, useUnifiedTopology: true })
.then(()=>{
    console.log("MOngodb connection successful!!");
    app.listen(3000,"0.0.0.0",()=>{console.log('connected at port 3000')} ) ;


}).
catch((err)=>{
    console.log(err)
})







