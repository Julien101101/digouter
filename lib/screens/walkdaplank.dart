import 'package:flutter/material.dart';

class WalkDaPlank extends StatelessWidget {
  final String enteredName;

  WalkDaPlank({Key? key, required this.enteredName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $enteredName!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your logic for the next screen
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
