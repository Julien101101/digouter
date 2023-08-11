import 'package:flutter/material.dart';

class WassUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wass Up')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Wass Up Screen'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'cook_it'),
              child: Text('Go to Who Let Him Cook'),
            ),
          ],
        ),
      ),
    );
  }
}
