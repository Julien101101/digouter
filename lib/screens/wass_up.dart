import 'package:flutter/material.dart';

class WassUpScreen extends StatelessWidget {
  const WassUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wass Up')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Wass Up Screen'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'cook_it'),
              child: const Text('Go to Who Let Him Cook'),
            ),
          ],
        ),
      ),
    );
  }
}
