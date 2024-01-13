import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Admin/Screens/admin_screen.dart';
import 'package:flutter_application_1/common/widgets/botttom_nav_bar.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/features/Auth/screen/Auth_screen.dart';
import 'package:flutter_application_1/providers/user_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      final userProvider = Provider.of<UserProvider>(context, listen: false);
      final isUserLoggedIn = userProvider.user.token.isNotEmpty;
      final isAdmin = userProvider.user.type;

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              isUserLoggedIn ? isAdmin=='user'
              ? const BottomBar() :const AdminScreen()
          : const AuthScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 27, 49, 67),
            Color.fromARGB(255, 73, 29, 81),
          ]),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cast_for_education_sharp,
              size: 47.0,
              color: GlobalVariables.backgroundColor,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Tutor_enmar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
