import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

// Class that  allow map the  routes ubicate in json format 
class _MainProvider {
    List<dynamic> lockList = [];
  	List<dynamic> mechList = [];
  	List<dynamic> elecList = [];

    Future<List<dynamic>> lockS() async {
  		final answ = await rootBundle.loadString('dataJson/menu_opts.json');

    	Map valueMap = json.decode(answ);

    	lockList = valueMap['lockersmith'];

    	return lockList;
  	}

  	Future<List<dynamic>> mech() async {
    	final answ = await rootBundle.loadString('dataJson/menu_opts.json');

    	Map valueMap = json.decode(answ);

    	mechList = valueMap['mechanic'];

    	return mechList;
  	}

    Future<List<dynamic>> electric() async {
    	final answ = await rootBundle.loadString('dataJson/menu_opts.json');

    	Map valueMap = json.decode(answ);

    	elecList = valueMap['electrical'];

    	return elecList;
  	}
}

final mainProvider = _MainProvider();
