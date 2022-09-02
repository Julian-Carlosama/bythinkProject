import 'package:flutter/material.dart';

class AppBart extends StatelessWidget {
  const AppBart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 85,
      flexibleSpace: Container(color: Colors.black),
      // ignore: prefer_const_constructors
      title: Text(
        'Bythink',
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'arial'),
      ),
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.5),
          child: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        )
      ],
    );
  }
}
