import 'package:flutter/material.dart';
import 'package:flutter_auth/domain/controllers.dart/auth_controller.dart';
import 'package:flutter_auth/ui/pages/Login/login_screen.dart';
import 'package:flutter_auth/ui/pages/Signup/components/background.dart';
import 'package:flutter_auth/ui/pages/Signup/components/or_divider.dart';
import 'package:flutter_auth/ui/pages/Signup/components/social_icon.dart';
import 'package:flutter_auth/ui/widgets/already_have_an_account_acheck.dart';
import 'package:flutter_auth/ui/widgets/rounded_button.dart';
import 'package:flutter_auth/ui/widgets/rounded_input_field.dart';
import 'package:flutter_auth/ui/widgets/rounded_password_field.dart';
//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var nameController = TextEditingController();
    var passwordController = TextEditingController();
    var password2Controller = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: size.height * 0.04),
            RoundedInputField(
              controller: nameController,
              hintText: "Name",
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedInputField(
              controller: emailController,
              hintText: "Email",
              icon: Icons.email,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: passwordController,
              hintText: "Password",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              controller: password2Controller,
              hintText: "Write your password again ",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                AuthController.instance.register(nameController.text.trim(), emailController.text.trim(), passwordController.text.trim(), password2Controller.text.trim());
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return LoginScreen();
                //     },
                //   ),
                // );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
