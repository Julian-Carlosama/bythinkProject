// ignore_for_file: prefer_const_constructors
//import 'package:bythink/src/options/categories.dart';
import 'package:bythink/src/pages/mechanic/car_screen.dart';
import 'package:flutter/material.dart';
import 'package:bythink/src/providers/main_provides.dart';
import 'package:bythink/src/utils/icon_string.dart';

// Class that displays the items that make up mechanic
class MechanicSection extends StatelessWidget {
  const MechanicSection({Key? key}) : super(key: key);

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
        title: Text(
          'Mechanic',
          //'Mecanicoss',
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'arial'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.5),
            child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SectionCar()),
                  );
                }),
          )
        ],
      ),
      body: FutureBuilder(
        future: mainProvider.mech(),
        initialData: const [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listItems(snapshot.data),
          );
        },
        //body: _list()
        /*body: ListView(
          //children: [Column(children: _CreateOptions())],
          children: [Column(children: _CreateOptions())],
        )*/
      ),
    );
  }

  // Widget that call the main provider components
  /*Widget _list() {
    return FutureBuilder(
      future: mainProvider.mech(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data),
        );
      },
    );
  }*/

  // List the items like name and icons available
  List<Widget> _listItems(data) {
    final List<Widget> option = [];
    data.forEach((element) {
      final widgetOptions = ListTile(
          title: Text(element['nameText']),
          leading: getIcon(element['icon']),
          // Aqui podré llamar el widget que se crea para redirecionar
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: () {
            //print("tapped on container");
          });
      option
        ..add(widgetOptions)
        ..add(Divider());
    });

    return option;
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

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MechanicSection()),
            );
          },
        ),
      ),
    );
  }
}
