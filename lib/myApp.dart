import 'package:flutter/material.dart';
import class  {
  
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  MyApp({required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      onGenerateRoute:
          AppRouter.generateRoute, // Use the class, not an instance
      initialRoute: initialRoute,
    );
  }
}
