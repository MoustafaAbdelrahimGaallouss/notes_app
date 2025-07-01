import 'package:flutter/material.dart';
import 'package:note_app/views/widget/Custom_app_bar.dart';
import 'package:note_app/views/widget/notes_list_view.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: const[
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
