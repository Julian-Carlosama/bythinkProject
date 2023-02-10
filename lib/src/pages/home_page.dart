//import 'package:bythink/src/pages/dashboard.dart';
import 'package:bythink/src/options/cards_home.dart';
import 'package:bythink/src/pages/mechanic_section.dart';
import 'package:bythink/src/options/options_buttons.dart';
import 'package:bythink/src/providers/main_provides.dart';
import 'package:flutter/material.dart';

// Class that contain the features about of homepage
class HomePage extends StatelessWidget {
	const HomePage({Key? key}) : super(key: key);

	// This widget is the root of the application.
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			//backgroundColor: Color(0xFFFF8F8F8),
			backgroundColor: Color(0xFFFE6E6E6),

			/*title: 'Bythink Demo',
				theme: ThemeData(
					brightness: Brightness.dark,
					canvasColor: Colors.white,
				),*/
      // Section that contain the features like application name, color, fonsize, etc
			appBar: AppBar(
				toolbarHeight: 80,
				flexibleSpace: Container(color: Colors.black),
				title: Text(
					'ManuExpert',
					style: TextStyle(fontSize: 29, fontFamily: 'Lobster'),
				),
				automaticallyImplyLeading: false,
				actions: [
					Padding(
						padding: EdgeInsets.symmetric(horizontal: 7.5),
						child: IconButton(
							icon: Icon(Icons.menu),
							onPressed: () {},
						),
					)
				],
			),
      // Section that contain the components of the app 
			body: ListView(
				children: [
					Container(
						child: Text(
							'Do you have an emergency?',
							//'¿Tienes una emergencia?',
							style: TextStyle(
								fontSize: 20,
								fontFamily: 'Releway',
								fontWeight: FontWeight.bold,
								//color: Colors.white
							),
						),
						alignment: Alignment.center,
						height: 60,
						//decoration: BoxDecoration(color: Colors.red),
					),

          // This function is called for integrate the features of OptionsButtoms
					OptionsButtoms(),
					Divider(
						color: Colors.black.withOpacity(0.2),
						//color: Color(0xFFF059F13).withOpacity(0.2),
						//color: Color(0xFFF0f9104),
						thickness: 2,
					),
					Container(
						height: 200,
						//decoration: BoxDecoration(color: Colors.red),
						padding: EdgeInsets.only(top: 20),
						child: Column(
							children: [
								Title(
									color: Colors.black,
									child: Text(
										'What does this app do?',
										//'¿Que puede hacer esta app por ti?',
										style: TextStyle(
											fontSize: 20,
											fontWeight: FontWeight.bold,
											//color: Colors.white
										),
									),
								),
								Container(
									//decoration: BoxDecoration(color: Colors.red),
									padding: EdgeInsets.only(left: 25, right: 25, top: 10),
									child: Text(
										'You have a problem with your lock, car, pipe, etc; Search in this app for people willing to help you and much more.',
										//'Tienes un problema con tu cerradura, vehiculo, etc; Aquí podras encontrar profesionales que pueden ayudarte y mucho más.',
										style: TextStyle(
											fontSize: 19,
											//color: Colors.white
										),
										textAlign: TextAlign.center,
									),
								),
								//FlatButton(child: Text('Leer más'), onPressed: () {}),
							],
						),
					),
					Divider(
						color: Colors.black.withOpacity(0.2),
						thickness: 2,
					),

					// This function is called for integrate the features of CardHome
          CardHome(),
				],
			),

      // This section allow create features for AppBar 
			bottomNavigationBar: BottomAppBar(
				color: Colors.black,
        // This section call the widget _BottomsAp with the features.
				child: _BottomsAp(),
			),
			floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
		);
		/*Widget _lista() {
			print(mainProvider.options);

			return ListView(
				children: [
					
				],
			);

		}*/
	}

	/*Widget _OptionsButtoms() {
		return Container(
			//width: 350,
			height: 90,
			padding: EdgeInsets.only(left: 10, right: 20),
			/*decoration: BoxDecoration(
							color: Colors.blue,
						),*/
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceAround,
				children: [
					Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							IconButton(
								iconSize: 50,
								icon: const Icon(
									Icons.build,
									size: 50,
								),
								color: Colors.black,
								onPressed: () {},
							),
							Text(
								'Mechanic',
								textAlign: TextAlign.center,
							),
						],
					),
					Divider(),
					Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							IconButton(
								iconSize: 50,
								icon: const Icon(Icons.lock_open_rounded, size: 50),
								color: Colors.black,
								onPressed: () {},
							),
							Text(
								'Locksmith',
								textAlign: TextAlign.center,
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
								color: Colors.black,
								onPressed: () {},
							),
							Text(
								'Electrical',
								textAlign: TextAlign.center,
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
								color: Colors.black,
								onPressed: () {},
							),
							Text(
								'Carpenter',
								textAlign: TextAlign.center,
							),
						],
					),
				],
			),
		);
	}*/

  // This widget conained the features of the diferentes buttoms for the appBar
	// ignore: non_constant_identifier_names
	Widget _BottomsAp() {
		return Row(
			children: [
				IconButton(
						// ignore: prefer_const_constructors
						icon: Icon(
							Icons.account_circle,
							size: 30,
							color: Colors.white,
						),
						padding: EdgeInsets.only(left: 20),
						onPressed: () {}),
				Spacer(),
				IconButton(
						icon: Icon(
							Icons.home,
							size: 30,
							color: Colors.white,
						),
						onPressed: () {}),
				Spacer(),
				IconButton(
						icon: Icon(
							Icons.settings,
							size: 30,
							color: Colors.white,
						),
						padding: EdgeInsets.only(right: 20),
						onPressed: () {}),
			],
		);
	}
}
