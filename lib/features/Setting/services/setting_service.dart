import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/util.dart';
import 'package:flutter_application_1/features/Auth/screen/Auth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingService{
  void logOut(BuildContext context) async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('x-auth-token', '');
      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(
        context,
        AuthScreen.routeName,
        (route) => false,
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

}

