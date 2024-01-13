import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';


class UserProvider extends ChangeNotifier {
  User _user = User(
      id: '',
      password: '',
      name: '',
      email: '',
      address: '',
      type: '',
      token: '',
      );

  User get user => _user;
  void setUser(String user) {
    
    _user = User.fromJson(user);
    notifyListeners();
  }
}
