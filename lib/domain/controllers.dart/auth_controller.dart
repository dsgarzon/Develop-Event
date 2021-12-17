import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/pages/Login/login_screen.dart';
import 'package:flutter_auth/ui/pages/menu.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  // ignore: unused_field, User
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
     _user = Rx<User?>(auth.currentUser);
     _user.bindStream(auth.userChanges());
     ever(_user, _initialScreen);
  }

  _initialScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>LoginScreen());
    }else{
      Get.offAll(()=>MenuScreen());
    }
  }
  void register (name, email, password, password2){
    try {
    auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User message",
      backgroundColor: Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Account creation failed",
          style: TextStyle(
            color:Colors.white
            ),
            ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
            color: Colors.white
          )
        )
      );
    }
  }
//   Future<void> login(theEmail, thePassword) async {
//     try {
//       await FirebaseAuth.instance
//           .signInWithEmailAndPassword(email: theEmail, password: thePassword);
//       print('OK');
//       return Future.value(true);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('NOK 1');
//         return Future.error("User not found");
//       } else if (e.code == 'wrong-password') {
//         print('NOK 2');
//         return Future.error("Wrong password");
//       }
//     }
//     print('NOK');
//   }

//   Future<void> signUp(email, password) async {
//     try {
//       await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(email: email, password: password);
//       return Future.value(true);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         return Future.error('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         return Future.error('The account already exists for that email.');
//       }
//     }
//   }

//   Future<void> logOut() async {
//     try {
//       await FirebaseAuth.instance.signOut();
//     } catch (e) {
//       return Future.error(e.toString());
//     }
//   }

//   // String userEmail() {
//   //   String email = FirebaseAuth.instance.currentUser!.email ?? "a@a.com";
//   //   return email;
//   // }

//   // String getUid() {
//   //   String uid = FirebaseAuth.instance.currentUser!.uid;
//   //   return uid;
//   // }
}
