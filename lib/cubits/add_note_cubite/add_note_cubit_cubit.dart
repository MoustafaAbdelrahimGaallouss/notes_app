import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';
part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffD7DEDC); // Default color
  addNoteMethod(NoteModel note) async {
    note.color = color.value;
    // Set the color value in the note model
    emit(AddNoteLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteSucessState());
    } catch (e) {
      emit(AddNoteErrorState(e.toString()));
    }
  }
}
