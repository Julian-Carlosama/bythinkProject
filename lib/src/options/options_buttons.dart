// ignore_for_file: prefer_const_constructors
import 'package:bythink/src/pages/locksmith_section.dart';
import 'package:bythink/src/pages/mechanic_section.dart';
import 'package:bythink/src/pages/electrical_section.dart';
import 'package:flutter/material.dart';

class OptionsButtoms extends StatelessWidget {
  const OptionsButtoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.only(bottom: 19),
        //color: Colors.red,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(
                    Icons.build,
                    size: 50,
                  ),
                  //color: Colors.white,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MechanicSection(),
                      )),
                ),
                const Text(
                  'Mechanic',
                  //'Mecánico',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.lock, size: 50),
                  //color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocksmithSection(),
                        ));
                  },
                ),
                const Text(
                  'Locksmith',
                  //'Cerrajero',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.electrical_services, size: 50),
                  //color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ElectricalSection(),
                        ));
                  },
                ),
                const Text(
                  'Electrical',
                  //'Electricista',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.carpenter, size: 50),
                  //color: Colors.white,
                  onPressed: () {},
                ),
                const Text(
                  'Carpenter',
                  //'Carpintero',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.construction, size: 50),
                  //color: Colors.white,
                  onPressed: () {},
                ),
                const Text(
                  //'Carpenter',
                  'Constructor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.content_cut, size: 50),
                  //color: Colors.white,
                  onPressed: () {},
                ),
                const Text(
                  'Beauty',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.plumbing, size: 50),
                  //color: Colors.white,
                  onPressed: () {},
                ),
                const Text(
                  //'Carpenter',
                  'Plumber',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12, 
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.local_shipping, size: 50),
                  //color: Colors.white,
                  onPressed: () {},
                ),
                const Text(
                  'Removals',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12, 
                    //color: Colors.white
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.question_mark, size: 50),
                  //color: Colors.black,
                  onPressed: () {},
                ),
                const Text(
                  'Others',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12, 
                    //color: Colors.black
                  ),
                ),
              ],
            ),
          ])
        ]));
  }
}
