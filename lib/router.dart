import 'package:digouter/screens/omatey.dart';
import 'package:digouter/screens/walkdaplank.dart';
import 'package:digouter/screens/who_let_him_cook.dart';
import 'package:digouter/screens/rap_battle.dart';
import 'package:flutter/material.dart';

// Import other screen classes as needed
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/oMatey':
        return MaterialPageRoute(builder: (context) => OMatey());
      case 'walkdaplank':
        return MaterialPageRoute(
          builder: (context) => WalkDaPlank(enteredName: ""),
        );
      case 'cook_it':
        return MaterialPageRoute(
            builder: (context) => const WhoLetHimCookScreen());
      case 'letsrap':
        return MaterialPageRoute(builder: (context) => RapBattle());

      case 'nextScreen': // Change to the appropriate route name
        // Access the enteredName from settings.arguments
        final enteredName = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => WalkDaPlank(enteredName: enteredName),
        );

      default:
        // If the provided route name doesn't match any case, navigate to a specific screen (e.g., WassUpScreen)
        return MaterialPageRoute(builder: (context) => OMatey());
    }
  }
}
