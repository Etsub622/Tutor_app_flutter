import 'dart:io';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/error_handling.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/constants/util.dart';
import 'package:flutter_application_1/models/tutor_form.dart';
import 'package:flutter_application_1/providers/user_provider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class AdminService {
  void registerTutor({
    required BuildContext context,
    required String name,
    required String description,
    required String category,
    required List<File> images,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      final cloudinary = CloudinaryPublic('dzfbycabj', 'ho2lq8ge');
      List<String> imageUrls = [];

      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageUrls.add(res.secureUrl);
      }
      
      Tutor tutor = Tutor(
        name: name,
        description: description,
        images: imageUrls,
        category: category,
      );

      http.Response res = await http.post(
        Uri.parse('$uri/admin/register-tutor'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: tutor.toJson(),
      );
     
      httpErrorHandle(
          response: res,
          context: context,
          onsuccess: () {
            showSnackBar(context, 'tutor registered successfuly');
            Navigator.pop(context);
          });
    } catch (err) {
      showSnackBar(context, err.toString());
    }
  }
}
