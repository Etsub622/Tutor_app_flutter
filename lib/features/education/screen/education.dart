import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/features/Setting/widget/search_here.dart';
import 'package:flutter_application_1/features/education/widget/catagories.dart';
import 'package:flutter_application_1/features/education/widget/courseButton.dart';
class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Row(
                  children: [
                    Icon(
                      Icons.cast_for_education_sharp,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Tutor',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: GestureDetector(
                        onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SearchHere(),
                          ),
                          );
                        },
                        child: const Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Icon(Icons.notifications_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
    ),
      body:const Padding(
        padding: EdgeInsets.all(15.0),
        child:  Column(
          children: [
            TopCategories(),
            SizedBox(height:30.0 ,) ,
            CourseButton(),
          ],
        ),
      ),   
    
    );

  }
}




