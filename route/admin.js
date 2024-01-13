const express=require('express');
const adminRouter=express.Router();
const admin = require("../middlewares/admin");

adminRouter.post("/admin/register-tutor",admin,async(req,res)=>{
    try{
        const {name,description,images,category}=req.body;
        let tutor=new Tutor({
            name,
            description,
            images,
            category,
        });
        tutor=await tutor.save();
        res.json(tutor);

    }catch(e){
        res.status(500).json({error:e.message});
    }

})
module.exports=adminRouter;