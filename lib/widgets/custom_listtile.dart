import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function onChanged;
  final bool value;
  const CustomListTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle),
        trailing: Switch(
          value: value,
          onChanged: (val) => onChanged,
        ),
      ),
    );
  }
}
