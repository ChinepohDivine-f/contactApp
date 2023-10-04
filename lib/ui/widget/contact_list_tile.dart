import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile(
      {super.key, required List<Contact> _contacts})
      : _contacts = contacts,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
        leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // borderRadius:
                //     BorderRadius.circular(50),
                color: Colors.grey),
            child: Icon(Icons.person)),
        title: Text(
          _contacts[index].name,
        ),
        subtitle: Text(_contacts[index].email),
        // subtitleTextStyle: TextStyle(fontSize: 10),
        style: ListTileStyle.drawer,
        trailing: IconButton(
            onPressed: () {
              // _contacts[index].isFavourite =
              //     !_contacts[index].isFavourite;
              setState(() {
                _contacts[index].isFavourite =
                    !_contacts[index].isFavourite;
                _contacts.sort((a, b) {
                  if (a.isFavourite) {
                    // contact One will be Setbefore contact Two
                    return -1;
                  } else if (b.isFavourite) {
                    // contact one will come after contact Two
                    return 1;
                  } else {
                    // state remains unchanged
                    return 0;
                  }
                });
              });
              // print(_contacts[index].isFavourite);
            },
            icon: Icon(
              _contacts[index].isFavourite
                  ? Icons.star
                  : Icons.star_border,
              color: _contacts[index].isFavourite
                  ? Colors.amber
                  : Colors.grey,
            )));
  }
}
