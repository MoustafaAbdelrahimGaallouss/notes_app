import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubite/add_note_cubit_cubit.dart';
import 'package:note_app/views/widget/add_note_form.dart';

class addNoteModelsButtonSheet extends StatelessWidget {
  const addNoteModelsButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSucessState) {
            Navigator.pop(context);
          }

          if (state is AddNoteErrorState) {
            print(state.errorMessage);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(
                child: const addNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
