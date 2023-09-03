// Julien Savary
// time class for created things.
// for this main i would like to run my app
// after this is done i would like to sync this main to the classes
// I have created for the creation and useability of people
// later I will want for this main to sync to firebase
// third I would like to make it publisheable on the domain
// digouter.app

import 'package:flutter/material.dart';
import 'router.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //=========== checks ====================
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase works!");
  } catch (e) {
    print("Error initializing Firebase: $e");
  }

  // ----------------------------------------

  runApp(const MyApp(initialRoute: '/oMatey')); // Set your initial route here
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({Key? key, required this.initialRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digouter',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: initialRoute,
    );
  }
}
// next import the bookmark chrome api

// so that people can see and share bookmarks and engage

// to understand a little more of the language and have a better grasp though
// I will create an omatey page to onboard.
