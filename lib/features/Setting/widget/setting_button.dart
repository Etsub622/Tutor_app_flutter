import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/global_variables.dart';

class SettingButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  const SettingButton({super.key, required this.text, required this.icon, required this.onTap});

  @override
  State<SettingButton> createState() => _SettingButtonState();}

class _SettingButtonState extends State<SettingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 40.0,
      decoration: BoxDecoration(
        border: Border.all(
            color:GlobalVariables.selectedNavBar, width: 0.0),
        borderRadius: BorderRadius.circular(10.0),
        
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row( 
          children: [
          OutlinedButton(
            onPressed: widget.onTap,
            style: OutlinedButton.styleFrom(
                   side: BorderSide.none, ),  
            child:Row(children: [
              Icon(widget.icon),
              const SizedBox(width: 3.0,),
              Text(
                widget.text,
                style: const TextStyle(color: Colors.black),
              )
            ],
            ),
          ),
        ]),
      ),
    );
  }
}
