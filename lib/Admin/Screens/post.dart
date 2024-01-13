import 'package:flutter/material.dart';
import 'package:flutter_application_1/Admin/Screens/add_information.dart';

class PostInformation extends StatefulWidget {
  const PostInformation({super.key});

  @override
  State<PostInformation> createState() => _PostInformationState();
}

class _PostInformationState extends State<PostInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('postpage')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddInformation.routeName);
        },
        tooltip: 'add your information',
        child: const Icon(Icons.add),
      ),
    );
  }
}
