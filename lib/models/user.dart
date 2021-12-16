// import 'package:equatable/equatable.dart';

// class MyUser extends Equatable{
//   final String emailAddress;
//   final String password;

//   const MyUser(this.emailAddress, this.password);

//   Map<String, Object> toFirebaseMap({String newImage}) {
//     return <String, Object>{
//       'emailAddress': emailAddress,
//       'password': password,
//     };
//   }

//   MyUser.fromFirebaseMap(Map<String, Object> data)
//       : emailAddress = data['emailAddress'] as String,
//         password = data['password'] as String;
//     @override

//   List<Object> get props => [emailAddress,password];
// }