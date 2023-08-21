import 'package:flutter/material.dart';

class OMatey extends StatelessWidget {
  const OMatey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.125),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("What is your name?"),
              SizedBox(height: 20), // Add some spacing
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
