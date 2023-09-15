import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../screens/walkdaplank.dart';

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
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFBB01), // Set the background color
            elevation: 5, // Add a slight elevation (shadow)
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Apply rounded corners
            ),
            textStyle: TextStyle(
              fontSize: 16, // Adjust the text size
              fontWeight: FontWeight.bold, // Make the text bold
            ),
            padding: EdgeInsets.symmetric(
                vertical: 15, horizontal: 30), // Adjust padding
            side: BorderSide(
              color: Colors.black, // Border color
              width: 2.0, // Border width
            ),
          ),
          onPressed: () {
            final name = nameController.text;
            if (name.isNotEmpty) {
              _submitName(name, context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WalkDaPlank(
                    enteredName: nameController.text,
                    clearCollection: () {},
                  ),
                ),
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
          child: Text('Walk da Plank'),
        )
      ],
    );
  }
}
