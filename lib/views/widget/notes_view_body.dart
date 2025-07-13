import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widget/Custom_app_bar.dart';
import 'package:note_app/views/widget/notes_list_view.dart';

class notesViewBody extends StatefulWidget {
  const notesViewBody({
    super.key,
  });

  @override
  State<notesViewBody> createState() => _notesViewBodyState();
}

class _notesViewBodyState extends State<notesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Column(
        children: const [
          customAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: notesListView(),
          ),
        ],
      ),
    );
  }
}
