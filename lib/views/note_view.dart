import 'package:flutter/material.dart';

class noteView extends StatelessWidget {
  const noteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Text(
          'This is the Note View',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      )),
    );
  }
}
