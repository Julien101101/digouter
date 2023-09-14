import 'package:flutter/material.dart';

class WalkDaPlank extends StatelessWidget {
  final String enteredName;

  final Function clearCollection;

  WalkDaPlank(
      {Key? key, required this.enteredName, required this.clearCollection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              clearCollection();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
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
