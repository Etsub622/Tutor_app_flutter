import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Setting/screen/contact_us_screen.dart';
import 'package:flutter_application_1/features/Setting/services/setting_service.dart';
import 'package:flutter_application_1/features/Setting/widget/setting_button.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          SettingButton(
              text: 'Language', icon: Icons.language_outlined, onTap: () {}),
          const SizedBox(
            height: 10.0,
          ),
          SettingButton(
              text: 'Contact Us',
              icon: Icons.contact_page_outlined,
               onTap: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ContactUs(),
                  ),
                  );
                  },),
          const SizedBox(
            height: 10.0,
          ),
          SettingButton(
              text: 'Log Out', icon: Icons.logout_outlined, 
              onTap: () =>SettingService().logOut(context),
              ),
        ],
      ),
    );
  }
}

