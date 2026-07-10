import 'package:flutter/material.dart';
import 'package:guffgarum/screens/profile/profile.dart';
import 'package:guffgarum/widgets/uihelper.dart';

class OTPScreen extends StatelessWidget {
  final String phoneNumber;
  final TextEditingController otp1Controller = TextEditingController();
  final TextEditingController otp2Controller = TextEditingController();
  final TextEditingController otp3Controller = TextEditingController();
  final TextEditingController otp4Controller = TextEditingController();
  final TextEditingController otp5Controller = TextEditingController();
  final TextEditingController otp6Controller = TextEditingController();
  OTPScreen({required this.phoneNumber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Verifying your mobile number",
              height: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "You've tried to register +977-${phoneNumber}",
              height: 14,
            ),
            UiHelper.CustomText(
              text: "recently. Wait before receiving a sms or a call",
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code. ", height: 14),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                    text: "Resend OTP?",
                    height: 14,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                SizedBox(width: 10),
                UiHelper.CustomContainer(otp2Controller),
                SizedBox(width: 10),

                UiHelper.CustomContainer(otp3Controller),
                SizedBox(width: 10),

                UiHelper.CustomContainer(otp4Controller),
                SizedBox(width: 10),

                UiHelper.CustomContainer(otp5Controller),
                SizedBox(width: 10),

                UiHelper.CustomContainer(otp6Controller),
              ],
            ),

            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Didn't receive the code?",
              height: 14,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),

      floatingActionButton: UiHelper.CustomButton(
        callback:() {
        Navigator.push(context, MaterialPageRoute(builder:(context)=>Profile()));
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
