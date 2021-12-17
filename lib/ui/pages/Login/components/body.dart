import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/pages/Login/components/background.dart';
import 'package:flutter_auth/ui/pages/Signup/signup_screen.dart';
import 'package:flutter_auth/ui/widgets/already_have_an_account_acheck.dart';
import 'package:flutter_auth/ui/widgets/rounded_button.dart';
import 'package:flutter_auth/ui/widgets/rounded_input_field.dart';
import 'package:flutter_auth/ui/widgets/rounded_password_field.dart';

//import 'package:get/get.dart';

class Body extends StatefulWidget {

  Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            soles(size: size.height * 0.05),
            Text(
              "DEVELOP",
              style: TextStyle(fontSize: size.width * 0.1),
            ),
            Text(
              "EVENT",
              style: TextStyle(fontSize: size.width * 0.1),//fontWeight: FontWeight.bold
            ),            
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/manos.jpg",
              width: size.width * 0.5,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email",
              icon: Icons.email,
              onChanged: (value) {},
              controller: emailController,
            ),
            RoundedPasswordField(
              hintText: "Password",
              onChanged: (value) {},
              controller: passwordController,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return MenuScreen();
                //     },
                //   ),
                // );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
  Row soles({required double size}) {
    return Row(
                children:[
                  Expanded(child: Container(),
                  ),
                  Icon(Icons.wb_sunny,  size: size),
                  SizedBox(width: 10),
                  Icon(Icons.wb_sunny_outlined, size: size),
                ],
              );
  }