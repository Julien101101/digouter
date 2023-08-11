import 'package:flutter/material.dart';

class RapBattleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rap Battle')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Rap Battle Screen'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'wass_up'),
              child: Text('Go back to Wass Up'),
            ),
          ],
        ),
      ),
    );
  }
}
