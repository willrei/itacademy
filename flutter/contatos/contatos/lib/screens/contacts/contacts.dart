import 'package:flutter/material.dart';
import './contact_item.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contatos')),
      body: ListView(
        children: const [
          ContactItem('Nome Contato A', '+55 51 99626-4269'),
          ContactItem('Nome Contato B', '+55 51 99626-4279'),
          ContactItem('Nome Contato C', '+55 51 99626-4289'),
          ContactItem('Nome Contato D', '+55 51 99626-4299'),
          ContactItem('Nome Contato E', '+55 51 99626-4300'),
        ],
      ),
    );
  }
}
