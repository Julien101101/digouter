import 'package:flutter/material.dart';

class WhoLetHimCookScreen extends StatelessWidget {
  const WhoLetHimCookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Who Let Him Cook')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Who Let Him Cook Screen'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'letsrap'),
              child: const Text('Go to Rap Battle'),
            ),
          ],
        ),
      ),
    );
  }
}
