import 'package:flutter/material.dart';
import 'package:flutter_application_1/Admin/Screens/add_information.dart';
import 'package:flutter_application_1/common/widgets/botttom_nav_bar.dart';
import 'package:flutter_application_1/features/Auth/screen/Auth_screen.dart';
import 'package:flutter_application_1/features/home/screen/home_screen.dart';
import 'package:flutter_application_1/features/home/screen/splash_screen.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );

      
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      );

      case BottomBar.routeName:
      return MaterialPageRoute(
        builder: (_) => const BottomBar(),
      );

      case AddInformation.routeName:
      return MaterialPageRoute(
        builder: (_) => const AddInformation(),
      );

      case SplashScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(body:Center(child:Text('Screen doesn exist')))
      );
  }
}
