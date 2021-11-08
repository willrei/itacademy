import 'package:flutter/material.dart';
import './screens/contacts/contacts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          elevation: 3.0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20.0,
          ),
        ),
      ),
      home: const Contacts(),
    );
  }
}
