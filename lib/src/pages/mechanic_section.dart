//import 'package:bythink/src/options/categories.dart';
import 'package:bythink/src/pages/mechanic/carScreen.dart';
import 'package:flutter/material.dart';

import 'package:bythink/src/providers/main_provides.dart';
import 'package:bythink/src/utils/icon_string.dart';

// Class that displays the items that make up mechanic
class MechanicSection extends StatelessWidget {
  MechanicSection({Key? key}) : super(key: key);


  /*final options = [
    'Automotive',
    'Motorcycle',
    'Washing machines and refrigerators',
    'Bykes',
    'Industrial machines'
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 85,
          flexibleSpace: Container(color: Colors.black),
          // ignore: prefer_const_constructors
          title: Text(
            //'Mechanic',
            'Mecanico',
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
        body: _list()
        /*body: ListView(
          //children: [Column(children: _CreateOptions())],
          children: [Column(children: _CreateOptions())],
        )*/
        );
  }

  // Widget that call the main provider components
  Widget _list() {
    return FutureBuilder(
      future: mainProvider.mech(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
  }

  // List the items like name and text available
  List<Widget> _listItems(data) {
    final List<Widget> options2 = [];
    data.forEach((element) {
      final widgetOptions = ListTile(
        title: Text(element['nameText']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.yellow),
          onTap: () {}
          /*Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SectionCar(),
            ))*/
      );

      options2
        ..add(widgetOptions)
        ..add(Divider());
    });

    return options2;
  }

  /*List<Widget> _CreateOptions() {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }*/
}
