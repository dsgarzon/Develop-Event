import 'package:flutter/material.dart';
//import 'package:get/get_state_manager/src/simple/get_state.dart';
//import 'package:flutter_auth/controllers.dart/login_contoller.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child, //GetBuilder<LoginController> body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.35, fit: BoxFit.cover
            ),
            
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.4, fit: BoxFit.cover
            ),
          ),
          child,
        ],
      ),
    );
  }
}