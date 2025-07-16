import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget/Custom_app_bar.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          customAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;

              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              widget.note.save();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.done,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: widget.note.content,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
