import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screen/Login/login.dart';
import 'package:instagram/widgets/ui_helper.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: 'Instagram Logo_text.png'),
            SizedBox(height: 45),
            UiHelper.CustomTextField(
              controller: emailController,
              text: "Email",
              tohide: false,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              tohide: true,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: usernameController,
              text: "User name",
              tohide: false,
              textInputType: TextInputType.name,
            ),

            SizedBox(height: 30),
            UiHelper.CustomButton(callback: () {}, buttonName: 'Sign Up'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                UiHelper.CustomTextButton(
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  text: 'Sign In',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
