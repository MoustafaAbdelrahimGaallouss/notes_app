part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoadingState extends AddNoteState {}

final class AddNoteSucessState extends AddNoteState {}

final class AddNoteErrorState extends AddNoteState {
  final String errorMessage;

  AddNoteErrorState(this.errorMessage);
}
