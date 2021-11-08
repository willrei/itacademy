import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String name;
  final String phone;
  const ContactItem(this.name, this.phone, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: const Icon(Icons.person),
      trailing: const Icon(Icons.star_border),
      horizontalTitleGap: 4.0,
      subtitle: Text(phone),
      onTap: () => print('tocou!'),
    );
  }
}
