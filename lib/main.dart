import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter(); // Initialize Hive
  Bloc.observer = SimpleBlocObserver(); // Set the Bloc observer
  Hive.registerAdapter(NoteModelAdapter()); // Open the box for notes
  await Hive.openBox<NoteModel>(kNotesBox);

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
      home: notesView(),
    );
  }
}
