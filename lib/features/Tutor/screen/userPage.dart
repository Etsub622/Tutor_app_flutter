import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Tutor/screen/tutor_screen.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text(user.username)),
      body:Center(child: Column(
        children: [
          Image.network(user.urlAvatar,height: 400,width: double.infinity,fit:BoxFit.cover,),
          const SizedBox(height: 16,),
          Text(
            user.username,
            style:const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
          ),
        ],)),
    );
  }
}
