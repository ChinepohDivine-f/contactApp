// ignore_for_file: prefer_const_constructors

import 'package:contactapp/data/contact.dart';
import 'package:contactapp/ui/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as faker;
import 'package:contactapp/ui/widget/contact_tile.dart';
import 'package:scoped_model/scoped_model.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() =>
      _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  // // undercore as a private indicator
  // late List<Contact> _contacts;

//runs when the widet is initialized
  // @override
  // void initState() {
  //   // TODO: Impliment initState
  //   super.initState();
  //   _contacts = List.generate(50, (index) {
  //     return Contact(
  //         name:
  //             '${faker.Person(faker.RandomGenerator()).firstName()} ${faker.Person(faker.RandomGenerator()).lastName()}',
  //         email: faker.Internet(faker.RandomGenerator())
  //             .freeEmail(),
  //         phoneNumber: faker.RandomGenerator()
  //             .integer(10000000)
  //             .toString());
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text("Contacts",
              style: TextStyle(
                color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600))),
      body: ScopedModelDescendant<ContactModel>(
        builder: (context, child, model) {
          return ListView.builder(
              itemCount: model.contacts.length,
              itemBuilder: (context, index) {
                return ContactTile(
                  contactIndex: index,
                );
              });
        },

        // child: ListView.builder(
        //   itemCount: _contacts.length,
        //   // runs and builds every list item
        //   itemBuilder: (BuildContext context, int index) {
        //     return ContactTile(
        //       contacts: _contacts,
        //     );

        //     // return ListTile(
        //     //     leading: Container(
        //     //         padding: EdgeInsets.all(5),
        //     //         decoration: BoxDecoration(
        //     //             shape: BoxShape.circle,
        //     //             // borderRadius:
        //     //             //     BorderRadius.circular(50),
        //     //             color: Colors.grey),
        //     //         child: Icon(Icons.person)),
        //     //     title: Text(
        //     //       _contacts[index].name,
        //     //     ),
        //     //     subtitle: Text(_contacts[index].email),
        //     //     // subtitleTextStyle: TextStyle(fontSize: 10),
        //     //     style: ListTileStyle.drawer,
        //     //     trailing: IconButton(
        //     //         onPressed: () {
        //     //           // _contacts[index].isFavourite =
        //     //           //     !_contacts[index].isFavourite;
        //     //           setState(() {
        //     //             _contacts[index].isFavourite =
        //     //                 !_contacts[index].isFavourite;
        //     //             _contacts.sort((a, b) {
        //     //               if (a.isFavourite) {
        //     //                 // contact One will be Setbefore contact Two
        //     //                 return -1;
        //     //               } else if (b.isFavourite) {
        //     //                 // contact one will come after contact Two
        //     //                 return 1;
        //     //               } else {
        //     //                 // state remains unchanged
        //     //                 return 0;
        //     //               }
        //     //             });
        //     //           });
        //     //           // print(_contacts[index].isFavourite);
        //     //         },
        //     //         icon: Icon(
        //     //           _contacts[index].isFavourite
        //     //               ? Icons.star
        //     //               : Icons.star_border,
        //     //           color: _contacts[index].isFavourite
        //     //               ? Colors.amber
        //     //               : Colors.grey,
        //     //         )));
        //   },
        // ),
      ),
    );
  }
}
