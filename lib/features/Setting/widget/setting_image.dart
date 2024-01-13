import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/user_provider.dart';
import 'package:provider/provider.dart';

class SettingImage extends StatefulWidget {
  const SettingImage({Key? key});

  @override
  State<SettingImage> createState() => _SettingImageState();
}

class _SettingImageState extends State<SettingImage> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 200.0,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 172, 244, 252), width: 0.0),
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.transparent, 
        image: const DecorationImage(
          image:AssetImage('Asset/images/download.jpg',),
          fit: BoxFit.cover,
          ),
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
                child: Text(
                  'Connecting students and tutors to revolutionize education.',
                  style: TextStyle(fontSize: 12,color: Colors.white),
            ),
            ),
          const SizedBox(height: 120.0,),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                
                ),
                Text(
                  user.email,
                  style:const TextStyle(fontSize: 13,color: Colors.white),
                ),

              ],)
        ],
      ),
      );
  }
}
