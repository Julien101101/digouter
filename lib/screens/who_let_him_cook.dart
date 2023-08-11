import 'package:flutter/material.dart';

class WhoLetHimCookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Who Let Him Cook')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Who Let Him Cook Screen'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'letsrap'),
              child: Text('Go to Rap Battle'),
            ),
          ],
        ),
      ),
    );
  }
}
