import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/features/Setting/screen/setting_screen.dart';
import 'package:flutter_application_1/features/Tutor/screen/tutor_screen.dart';
import 'package:flutter_application_1/features/education/screen/education.dart';
import 'package:flutter_application_1/features/home/screen/home_screen.dart';

class BottomBar extends StatefulWidget {
  static const routeName = '/actual_home';
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;

  void updatePage(int page) {setState(() {_page = page; });}

  List<Widget> pages = [
    const HomeScreen(),
    const EducationScreen(),
    const TutorPage(),
    const SettingScreen(), 
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor:GlobalVariables.selectedNavBar,
        unselectedItemColor: GlobalVariables.unselectedNavBar,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 25.0,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width:40,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                  color: _page==0
                    ?GlobalVariables.selectedNavBar
                    :GlobalVariables.backgroundColor,
                  width:2.0,
                  ))),
              child:const Icon(Icons.home_outlined) ,    
            ),
            label: '',
            ),
            
             BottomNavigationBarItem(
            icon: Container(
              width:40,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                  color: _page==1
                    ?GlobalVariables.selectedNavBar
                    :GlobalVariables.backgroundColor,
                  width:2.0,
                  ))),
              child:const Icon(Icons.cast_for_education),    
              
            ),
            label: '',
            ),

             BottomNavigationBarItem(
            icon: Container(
              width:40,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                  color: _page==2
                    ?GlobalVariables.selectedNavBar
                    :GlobalVariables.backgroundColor,
                  width:2.0,
                  ))),
              child: const Icon(Icons.card_travel_outlined),    
                  
            ),
            label: '',
            ),
             BottomNavigationBarItem(
            icon: Container(
              width:40.0,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                  color: _page==3
                    ?GlobalVariables.selectedNavBar
                    :GlobalVariables.backgroundColor,
                  width:2.0,
                  ))),
              child: const Icon(Icons.settings),    
                  
            ),
            label: '',
            ),
        ],
        ),
    );
  }
}
