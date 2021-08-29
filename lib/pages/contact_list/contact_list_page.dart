import 'package:flutter/material.dart';
import 'package:ikon_challenge/custom_widgets/app_bar_widget.dart';
import 'package:ikon_challenge/data/contact_repository.dart';
import 'package:ikon_challenge/pages/contact_list/widgets/contact_item_widget.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({Key key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      final recipes = ContactRepository.getContacts();
      return Scaffold(
        body: CustomScrollView(
        slivers: <Widget>[
            const AppBarWidget(
              text: 'IkonTech Contactos',
              imagePath: 'https://ikontechnologies.com/wp-content/uploads/2021/01/ikon-footer.png',
              centerTitle: true,
            ),
            SliverFixedExtentList(
                itemExtent: 110,
                delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ContactItem(recipes[index])),
                  childCount: recipes.length,
                ),
              ),
          ],
        ),
      );
    }
  
}
