import 'package:flutter/material.dart';

class Contact {
  String name;
  String email;
  String phoneNumber;
  bool isFavourite;

  Contact(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      this.isFavourite = false});
}
  


// class Contact extends StatelessWidget {
//   const Contact({super.key});

//   @override
//   Widget build(BuildContext context) {
//     String name;
//     String email;
//     String phoneNumber;
//     return variables(name, email, phoneNumber)
//   }
// }
