import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  	'add_alert': Icons.add_alert,
  	'accessibility': Icons.accessibility,
	'folder_open': Icons.folder_open,
	'time_to_leave': Icons.time_to_leave,
	'two_wheeler': Icons.two_wheeler,
	'kitchen': Icons.kitchen,
	'pedal_bike': Icons.pedal_bike,
	'precision_manufacturing': Icons.precision_manufacturing,
};

Icon getIcon(String nameIcon) {
	return Icon(
    	_icons[nameIcon],
    	color: Colors.black,
  );
}
