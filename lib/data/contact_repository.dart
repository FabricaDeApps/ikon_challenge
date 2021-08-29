import 'package:ikon_challenge/models/contact_model.dart';

class ContactRepository {
  static List<ContactModel> getContacts() => const [
        ContactModel(name: "Marco Franco"),
        ContactModel(name: "Raul Alday"),
        ContactModel(name: "Jessica Alba"),
        ContactModel(name: "Roger Waters"),
        ContactModel(name: "Darth Vader"),
        ContactModel(name: "Homer Simpson"),
        ContactModel(name: "Bill Gates"),
        ContactModel(name: "Elon Musk"),
        ContactModel(name: "Enrique Peña"),
        ContactModel(name: "Angeles Rodriguez"),
        ContactModel(name: "Monica Alvarado"),
        ContactModel(name: "Estrella Fugas"),
        ContactModel(name: "Juana Lopez")
      ];
}