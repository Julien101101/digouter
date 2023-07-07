import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'wass_up':
      return MaterialPageRoute(builder: (context) => WassUpScreen());
    case 'home':
      return MaterialPageRoute(
          builder: (context) => const HomePage(
                title: 'Home Page',
              ));
    case 'cook_it':
      return MaterialPageRoute(
          builder: (context) => const WhoLetHimCookScreen());
    case 'letsrap':
      return MaterialPageRoute(builder: (context) => const RapBattle(),))
    case 'settings':
      return MaterialPageRoute(builder: (context) => SettingsScreen());
    case 'logo':
      return MaterialPageRoute(builder: (context) => LogoScreen());

    default:
      return MaterialPageRoute(
          builder: (context) => const HomePage(
                title: 'Home Page',
              ));
  }
}
