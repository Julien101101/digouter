import 'package:flutter/material.dart';
import 'package:digouter/util/forms/name_form.dart';

class OMatey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = MediaQuery.of(context).size.width * 0.125;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("What is your name?",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'DaysOne-Regular')),
              const SizedBox(height: 20), // Add some spacing
              NameForm(),
            ],
          ),
        ),
      ),
    );
  }
}