import 'package:flutter/material.dart';
import 'package:guffgarum/screens/login/loginscreen.dart';
import 'package:guffgarum/widgets/uihelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo2.png', height: 250, width: 250),

            SizedBox(height: 20),

            UiHelper.CustomText(
              text: 'Welcome to Guff Garum',
              height: 20,
              fontWeight: FontWeight.bold,
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'Read out', height: 14),
                UiHelper.CustomText(
                  text: ' Privacy Policy.',
                  height: 14,
                  color: Colors.blue,
                ),
                UiHelper.CustomText(
                  text: "Tap 'Agree and Continue'",
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: ' To accept the ', height: 14),
                UiHelper.CustomText(
                  text: ' Terms and Conditions ',
                  height: 14,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: UiHelper.CustomButton(
        callback: () async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('hasSeenOnboarding', true);

          if (!context.mounted) return;

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        buttonname: 'Agree and Continue',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
