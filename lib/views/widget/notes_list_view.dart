import 'package:flutter/material.dart';
import 'package:note_app/views/widget/single_note_item.dart';

class notesListView extends StatelessWidget {
  const notesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
