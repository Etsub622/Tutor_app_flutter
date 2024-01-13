import 'package:flutter/material.dart';
import 'package:flutter_application_1/Admin/Screens/post.dart';
import 'package:flutter_application_1/constants/global_variables.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _page = 0;

  void updatePage(int page) {
    setState(() {
      _page = page; 
      });}

  List<Widget> pages = [
    const PostInformation(),
    const Text('cart page'),
    const Text('post page'), 
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration:const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,),),

          title: Row(children: [
            Container(alignment: Alignment.topLeft,child: Image.asset('Asset/images/download.jpg',width: 100,height: 40,),),
            const Text('Admin',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
          ]),
        ),
      ),

    body:pages[_page] ,
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
              child:const Icon(Icons.post_add),    
              
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
              child: const Icon(Icons.analytics_outlined),    
                  
            ),
            label: '',
            ),
             
        ],
        ), 
    );
  }
}
