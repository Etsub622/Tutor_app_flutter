const mongoose=require("mongoose");

const userSchema=mongoose.Schema({
    name:{
        required:true,
        type:String,
        trim:true,
    },
    email: {
        required: true,
        type: String,
        trim: true,
        validate: {
          validator: (value) => {
            const re =
              /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
            return value.match(re);
          },
          message: "Invalid email address",
        },
      },
    password:{
        required:true,
        type:String, 
        validate:{
            validator:(value)=>{
                return value.length>=6;
            },
            message:"please enter long password"
        },
    },
    address:{
        default:'',
        type:String,
    },
    type:{
        default:'user',
        type:String,
    }
});

const User=mongoose.model("User",userSchema);
module.exports=User;
