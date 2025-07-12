part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitialState extends NotesState {}

final class NotesLoadingState extends NotesState {}

final class NotesSuccessState extends NotesState {
  final List<NoteModel> notesList;

  NotesSuccessState({required this.notesList});
}

final class NotesErrorState extends NotesState {
  final String errorMessage;

  NotesErrorState(this.errorMessage);
}
