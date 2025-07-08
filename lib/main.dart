import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter(); // Initialize Hive
  await Hive.openBox(kNotesBox); // Open the box for notes

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
      home: const notesView(),
    );
  }
}
