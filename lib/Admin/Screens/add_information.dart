import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Admin/Service/admin_services.dart';
import 'package:flutter_application_1/common/widgets/custom_botton.dart';
import 'package:flutter_application_1/common/widgets/custom_textfield.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/constants/util.dart';


class AddInformation extends StatefulWidget {
  static const String routeName = '/add-information';
  const AddInformation({super.key});

  @override
  State<AddInformation> createState() => _AddInformationState();
}

class _AddInformationState extends State<AddInformation> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final AdminService adminServices = AdminService();
  final _addInformationFormKey = GlobalKey<FormState>();
  String category = 'elementary';
  List<File> images = [];

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    descriptionController.dispose();
  }

  List<String> gradeCategory = [
    'all',
    'elementary',
    'highschool',
    'secondary',
  ];

  void registerTutor() {
    if (_addInformationFormKey.currentState!.validate() && images.isNotEmpty) {
      adminServices.registerTutor(
          context: context,
          name: nameController.text,
          description: descriptionController.text,
          category: category,
          images: images,
          );
    }
  }

  void selectImages() async {
    var res = await pickImages();
    setState(() {
      images = res;
    });
  }

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
          title: const Text(
            'Add your information',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Form(
              key: _addInformationFormKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    images.isNotEmpty
                        ? CarouselSlider(
                            items: images.map(
                              (i) {
                                return Builder(
                                  builder: (BuildContext context) => Image.file(
                                    i,
                                    fit: BoxFit.cover,
                                    height: 200,
                                  ),
                                );
                              },
                            ).toList(),
                            options: CarouselOptions(
                              viewportFraction: 1,
                              height: 200,
                            ),
                          )
                        : GestureDetector(
                            onTap: selectImages,
                            child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(10),
                                dashPattern: const [10, 7],
                                strokeCap: StrokeCap.round,
                                child: Container(
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.folder_open,
                                        size: 40,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Center(
                                          child: Text(
                                        'select profile picture',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey.shade400),
                                      ))
                                    ],
                                  ),
                                )),
                          ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                        controller: nameController, hintText: 'Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: descriptionController,
                      hintText: 'describe yourself',
                      maxLines: 7,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: DropdownButton(
                        value: category,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: gradeCategory.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newVal) {
                          setState(() {
                            if (newVal != null) {
                              category = newVal;
                            }
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Custombutton(
                      text: 'submit',
                      onTap: registerTutor,
                    ),
                  ],
                ),
              ))),
    );
  }
}
