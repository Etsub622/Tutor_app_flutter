import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us',style:TextStyle(color: Colors.black)),
      ),
      body:Column(
        children: [
        Container(
          height: 300.0,
          color:const Color.fromARGB(255, 159, 160, 159),     
          child:const Padding(
            padding: EdgeInsets.only(left:18.0),
            child: Center(
                      child: Text(
                          " Whether you're a student seeking quality educational content or a tutor eager to share your expertise, EduConnect brings them together in one seamless platform.",
                      style: TextStyle
                          (fontSize: 14,
                          color: Colors.black),
                    ),
                    ),
          ),
               ),
          const SizedBox(
          height: 290.0,
                 child:  Padding(
                   padding: EdgeInsets.only(top:80.0),
                   child: Column(
                     children: [
                       Text('Join_Us',
                              style: TextStyle(
                              fontSize: 18,color: Color.fromARGB(255, 9, 8, 8),fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8,),
                        Text('LinkedIn: EduConnect_linkedin',
                              style: TextStyle(
                              color: Color.fromARGB(255, 136, 108, 108)),
                        ),
                        SizedBox(height: 8),
                        Text(' email us: EduConnect1@gmail.com',
                              style: TextStyle(
                              color: Color.fromARGB(255, 80, 68, 68)),
                        ),
                        SizedBox(height: 8),
                        Text('Telegram: @tutor_here',
                              style: TextStyle(
                              color: Color.fromARGB(255, 91, 66, 66)),
                        ),
                     ],
                   ),
                 ),
               ),
        
           Expanded(
             child: Container(
                     height: 20.0,
                     color:const Color.fromARGB(255, 21, 20, 23), 
                     child:const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Center(
                      child: Text(
                        'Connecting students and tutors to revolutionize education.',
                        style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 231, 227, 227)),
                  ),
                  ),
                
               
              ],
                     ),
                     ),
           ),
        ],
      ),
      
    );
  }
}
