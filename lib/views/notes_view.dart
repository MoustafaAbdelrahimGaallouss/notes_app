import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widget/add_note_button_sheet.dart';

import 'package:note_app/views/widget/notes_view_body.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16)),
                context: context,
                builder: (context) {
                  return addNoteModelsButtonSheet();
                });
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const notesViewBody());
  }
}
