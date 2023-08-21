// Julien Savary
// time class for created things.
// for this main i would like to run my app
// after this is done i would like to sync this main to the classes
// I have created for the creation and useability of people
// later I will want for this main to sync to firebase
// third I would like to make it publisheable on the domain
// digouter.app

// --------------------------------------------
//  ----------------IMPORTS--------------------
//    -----------------------------------------
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'myApp.dart';
//     ----------------------------------------
//   ------------------------------------------

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? userName = prefs.getString('userName');

  runApp(MyApp(initialRoute: userName == null ? '/omatey' : '/mainScreen'));
}



// next import the bookmark chrome api

// so that people can see and share bookmarks and engage

// to understand a little more of the language and have a better grasp though
// I will create an omatey page to onboard.
