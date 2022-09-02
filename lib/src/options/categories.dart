import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories(newMethod, {Key? key}) : super(key: key);

  final options = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven'];

  @override
  Widget build(BuildContext context) {
    return ListView(children: [Column(children: _CreateItems())]);
  }

  List<Widget> _CreateItems() {
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
  }
}
