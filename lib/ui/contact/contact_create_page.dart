import 'package:flutter/material.dart';

class ContactCreatePage extends StatelessWidget {
  const ContactCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Contact')),
      body: SingleChildScrollView(
        child: ColoredBox(color: Colors.grey,)
      )
    );
  }
}