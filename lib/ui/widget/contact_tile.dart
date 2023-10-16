import 'package:contactapp/ui/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ContactTile extends StatelessWidget {
  const ContactTile(
      {super.key, required this.contactIndex});

  final int contactIndex;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactModel>(
        builder: (context, child, model) {
      // InvalidType model) {},
      final displayedContact = model.contacts[contactIndex];
      return ListTile(
        
        title: Text((displayedContact.name)),
        subtitle: Text(displayedContact.email),
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(50)),
          child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              color: Colors.white70),
        ),
        trailing: IconButton(
            icon: Icon(
              displayedContact.isFavourite
                  ? Icons.star
                  : Icons.star_border,
              color: displayedContact.isFavourite
                  ? Colors.amber
                  : Colors.grey,
            ),
            onPressed: () {
              model.changeFavouriteStatus(contactIndex);
            }),
            
      );
    
    });
  }
}

class ContactsModel {}
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListTile(
//         leading: Container(
//             padding: EdgeInsets.all(5),
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 // borderRadius:
//                 //     BorderRadius.circular(50),
//                 color: Colors.grey),
//             child: Icon(Icons.person)),
//         title: Text(
//           _contacts[index].name,
//         ),
//         subtitle: Text(_contacts[index].email),
//         // subtitleTextStyle: TextStyle(fontSize: 10),
//         style: ListTileStyle.drawer,
//         trailing: IconButton(
//             onPressed: () {
//               // _contacts[index].isFavourite =
//               //     !_contacts[index].isFavourite;
//               setState(() {
//                 _contacts[index].isFavourite =
//                     !_contacts[index].isFavourite;
//                 _contacts.sort((a, b) {
//                   if (a.isFavourite) {
//                     // contact One will be Setbefore contact Two
//                     return -1;
//                   } else if (b.isFavourite) {
//                     // contact one will come after contact Two
//                     return 1;
//                   } else {
//                     // state remains unchanged
//                     return 0;
//                   }
//                 });
//               });
//               // print(_contacts[index].isFavourite);
//             },
//             icon: Icon(
//               _contacts[index].isFavourite
//                   ? Icons.star
//                   : Icons.star_border,
//               color: _contacts[index].isFavourite
//                   ? Colors.amber
//                   : Colors.grey,
//             )));
//   }
// }
