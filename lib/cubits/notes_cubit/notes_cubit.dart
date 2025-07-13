import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

  List<NoteModel>? NotesList;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    NotesList = notesBox.values.toList();
    emit(NotesSuccessState());
  }
}
