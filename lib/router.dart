import 'package:digouter/screens/wass_up.dart';
import 'package:digouter/screens/who_let_him_cook.dart';
import 'package:digouter/screens/rap_battle.dart';
import 'package:flutter/material.dart';
// Import other screen classes as needed

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'wass_up':
      return MaterialPageRoute(builder: (context) => WassUpScreen());
    case 'cook_it':
      return MaterialPageRoute(builder: (context) => WhoLetHimCookScreen());
    case 'letsrap':
      return MaterialPageRoute(builder: (context) => RapBattleScreen());

    default:
      // If the provided route name doesn't match any case, navigate to a specific screen (e.g., WassUpScreen)
      return MaterialPageRoute(builder: (context) => WassUpScreen());
  }
}
