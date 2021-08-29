import 'package:flutter/material.dart';

import 'pages/contact_list/contact_list_page.dart';


void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ikon Technologies',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const ContactListPage(),
    );
  }
}