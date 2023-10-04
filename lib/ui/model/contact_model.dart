import 'package:contactapp/data/contact.dart';
import 'package:faker/faker.dart' as faker;
import 'package:scoped_model/scoped_model.dart';

class ContactModel extends Model {
  // undercore as a private indicator
  final List<Contact> _contacts =
      List.generate(50, (index) {
    return Contact(
        name: faker.Person(faker.RandomGenerator())
                .firstName() +
            ' ' +
            faker.Person(faker.RandomGenerator())
                .lastName(),
        email: faker.Internet(faker.RandomGenerator())
            .freeEmail(),
        phoneNumber: faker.RandomGenerator()
            .integer(10000000)
            .toString());
  });

  // getter in flutter allowing us to acces the
  // private list "_contact" and get data from it but
  // we cannot modify the data in this list from another class.
  List<Contact> get contacts => _contacts;

  void changeFavoriteStatus(int index) {
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
  }
}
