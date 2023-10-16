import 'package:contactapp/ui/contact/widget/contact_form.dart';
import 'package:flutter/material.dart';

class ContactCreatePage extends StatelessWidget {
  const ContactCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Contact', style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.white,
      ),),
      backgroundColor: Colors.blueGrey,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24),
        child: ContactForm(),
      )
    );
  }
}
