import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Setting/widget/setting_button.dart';
import 'package:flutter_application_1/features/education/screen/biology.dart';
import 'package:flutter_application_1/features/education/screen/chemo.dart';
import 'package:flutter_application_1/features/education/screen/english.dart';
import 'package:flutter_application_1/features/education/screen/math.dart';
import 'package:flutter_application_1/features/education/screen/physics.dart';

class CourseButton extends StatelessWidget {
  const CourseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          SettingButton(
              text: 'Mathematics',
              icon: Icons.calculate,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MathScreen()));
              }),
          const SizedBox(
            height: 10.0,
          ),
          SettingButton(
            text: 'Biology',
            icon: Icons.biotech_outlined,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BiologyScreen()));
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          SettingButton(
            text: 'Chemistry',
            icon: Icons.science,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChemistryScreen()));
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          SettingButton(
            text: 'English',
            icon: Icons.speaker_group,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EnglishScreen()));
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          SettingButton(
            text: 'Physics',
            icon: Icons.science,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PhysicsScreen()));
            },
          ),
        ],
      ),
    );
  }
}
