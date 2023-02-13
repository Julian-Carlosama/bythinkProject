// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: null,
          ),
          child: Card(
            //color: Color(0xFFFDADADA),
            color: Color(0xFFFE9E9E9),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 5,
            margin: EdgeInsets.all(5),
            clipBehavior: Clip.antiAlias,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background
                        onPrimary: Colors.green, // foreground
                      ),
                      child: Text(
                        'Mechanic',
                        //'Mecanico',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/mechanic.jpg',
                  fit: BoxFit.cover,
                ),
                /*Image(
                      image: NetworkImage(
                          'https://s19538.pcdn.co/wp-content/uploads/2020/12/techs.jpg')),*/
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Request a service',
                        //'Solicitar servicio',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: null,
          ),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            clipBehavior: Clip.antiAlias,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      child: Text(
                        //'Cerrajero',
                        'Lockersmith',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Image(
                    image: NetworkImage(
                        'https://www.royalvt.com/wp-content/uploads/2021/04/RoyalGroup-SM-locksmith.jpg')),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        //'Solicitar servicio',
                        'Request a service',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: null,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Plumber',
                        //'Plomero',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Image(
                    image: NetworkImage(
                        'https://www.andresplomeria.top/wp-content/uploads/2018/12/o_1538000482_f8930aa9609a3126f9fd23cf9ad285f1-1024x494.jpg')),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Request a service',
                        //'Solicitar servicio',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: null,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Builder',
                        //'Constructor',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Image(
                    image: NetworkImage(
                        'https://www.serveisiconstruccio.com/media/crop/800/500/Listados/servicios/Albanileria.jpg')),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Request a service',
                        //'Solicitar servicio',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: null,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Electrical technician',
                        //'Electricista',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Image(
                    image: NetworkImage(
                        'https://www.tecsaqro.com.mx/wp-content/uploads/2019/09/habilidades_tecnico_electricista_4.jpg')),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Request a service',
                        //'Solicitar servicio',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: null,
          ),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      child: Text(
                        //'Carpintero',
                        'Carpenter',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Image(
                    image: NetworkImage(
                        'https://cdn2.hubspot.net/hubfs/3446990/Blog%20Images/Untitled%20design%20%288%29.png')),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Request a service',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
