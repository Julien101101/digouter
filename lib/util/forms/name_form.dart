import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NameForm extends StatefulWidget {
  @override
  _NameFormState createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController
        .dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }

  void _submitName(String name, BuildContext context) async {
    await FirebaseFirestore.instance.collection('user_names').add({
      'name': name,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: nameController,
          textAlign: TextAlign.center,
          onFieldSubmitted: (name) {
            _submitName(name, context);
          },
        ),
        const SizedBox(height: 25),
        ElevatedButton(
          onPressed: () {
            final name = nameController.text;
            if (name.isNotEmpty) {
              _submitName(name, context);
              Navigator.pushNamed(
                context,
                'WalkDaPlank',
              );
            } else {
              // Handle empty name input
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Please enter your name.'),
                  duration:
                      Duration(seconds: 2), // Adjust the duration as needed
                ),
              );
            }
          },
          child: const Text('Walk Da PLANK'),
        ),
      ],
    );
  }
}
