import 'package:flutter/material.dart';
import 'package:ikon_challenge/models/contact_model.dart';
import 'package:ikon_challenge/pages/contact/contact_page.dart';

import '../../../constants/colors.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contact;

  const ContactItem(
    this.contact, {
    Key key,
  })  : assert(contact != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => routeToRecipePage(context),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 230, 230, 1.0),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        contact.name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: AppColors.navy,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future routeToRecipePage(context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactPage(contact)),
    );
  }
}
