import 'package:contactapp/ui/contact/contact_create_page.dart';
import 'package:contactapp/ui/contact_list_page.dart';
import 'package:contactapp/ui/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ContactModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ContactsApp',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        home: const ContactListPage(),
        // home: const ContactCreatePage(),
      ),
    );
  }
}
