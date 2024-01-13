import 'package:flutter/material.dart';

class MathScreen extends StatefulWidget {
  const MathScreen({super.key});

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Math_information',style:TextStyle(color: Colors.black)),
      ),
      body:Column(
        children: [
        Container(
          height: 120.0,
          color:const Color.fromARGB(255, 159, 160, 159),     
          child:const Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Center(
                      child: Text(
                          "Mathematics is the study of numbers, quantities, shapes, and patterns."
                          "It encompasses various branches such as algebra, geometry, calculus, statistics, and more."
                           "Math is fundamental to understanding the world around us and is used in countless fields, from science and engineering to finance and art.",
                      style: TextStyle
                          (fontSize: 14,
                          color: Colors.black),
                    ),
                    ),
          ),
        ),

        Container(
          height: 450.0,
          color:const Color.fromARGB(255, 226, 239, 246),     
          child:const Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Center(
                      child: 
                      Column(
                        children: [

                          Text("Resources",),
                              SizedBox(height: 15.0,),
                              Text("Khan Academy (khanacademy.org)",),
                              SizedBox(height: 10.0,),
                              Text("MIT OpenCourseWare (ocw.mit.edu)",),
                              SizedBox(height: 10.0,),
                              Text( "Coursera (coursera.org)",),
                              SizedBox(height: 10.0,),
                              Text("Coursera (coursera.org)",),
                              SizedBox(height: 10.0,),
                              Text("Wolfram Alpha (wolframalpha.com)",),
                              SizedBox(height: 10.0,),
                        ],
                      ),
                    
                    ),
          ),
        ),
         Expanded(
             child: Container(
                     height: 30.0,
                     color:const Color.fromARGB(255, 21, 20, 23), 
                     child:const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Center(
                      child: Text(
                        'Why did the math book look sad?  '
                        'Because it had too many problems!',
                        style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 231, 227, 227)),
                  ),
                  ), 
              ]
              ,)
              ,),
           ),
        ],
        ),
    );
  }
}