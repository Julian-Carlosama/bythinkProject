// ignore_for_file: prefer_const_constructors
import 'package:bythink/src/providers/main_provides.dart';
import 'package:bythink/src/utils/icon_string.dart';
import 'package:flutter/material.dart';

// Class that displays the items that make up electrical
class ElectricalSection extends StatelessWidget {
  const ElectricalSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 85,
          flexibleSpace: Container(color: Colors.black),
          title: Text(
            'Electricista',
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'arial'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            )
          ],
        ),
        body: _list());
  }

  // Widget that call the main provider components
  Widget _list() {
    return FutureBuilder(
      future: mainProvider.electric(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
  }

  // List the items like name and text available
  List<Widget> _listItems(data) {
    final List<Widget> options3 = [];
    data.forEach((element) {
      final widgetOptions = ListTile(
        title: Text(element['nameText']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.green),
        onTap: () {},
      );

      options3
        ..add(widgetOptions)
        ..add(Divider());
    });

    return options3;
  }
}
