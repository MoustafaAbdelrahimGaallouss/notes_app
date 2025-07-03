import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';

void main() {
  runApp(const noteApp());
}

class noteApp extends StatelessWidget {
  const noteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const EditNoteView(),
    );
  }
}
