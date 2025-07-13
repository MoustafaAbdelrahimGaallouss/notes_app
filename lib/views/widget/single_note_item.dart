import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              note.title,
              style: const TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
              ),
              child: Text(
                note.content,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                FontAwesomeIcons.trash,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                note.delete();
                BlocProvider.of<NotesCubit>(context, listen: false)
                    .fetchAllNotes();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24.0,
            ),
            child: Text(
              note.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
