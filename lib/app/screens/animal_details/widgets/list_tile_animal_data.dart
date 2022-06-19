import 'package:flutter/material.dart';

class ListTileAnimalData extends StatelessWidget {
  ListTileAnimalData({Key? key, this.data, required this.title, this.trailing})
      : super(key: key);

  String title;
  String? data;
  Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: trailing,
      subtitle: Text(
        data ?? '',
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
