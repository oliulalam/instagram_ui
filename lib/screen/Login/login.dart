import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screen/SignUp/sign_up.dart';
import 'package:instagram/widgets/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: 'Instagram Logo_text.png'),
            SizedBox(height: 49,),
            UiHelper.CustomTextField(
              controller: emailController,
              text: 'Email',
              tohide: false,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 15),
            UiHelper.CustomTextField(
              controller: passwordController,
              text: 'Password',
              tohide: true,
              textInputType: TextInputType.text,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: UiHelper.CustomTextButton(
                    text: 'Forget password',
                    callback: () {},
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            UiHelper.CustomButton(callback: () {}, buttonName: "Log In"),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgUrl: 'fb_logo.png'),
                UiHelper.CustomTextButton(
                  callback: () {},
                  text: 'Log in with Facebook',
                ),
              ],
            ),

            SizedBox(height: 10),
            Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                UiHelper.CustomTextButton(
                    callback: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                    },
                    text: 'Sign Up'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
