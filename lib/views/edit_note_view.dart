import 'package:flutter/material.dart';

import 'widget/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: EditNoteViewBody(),
    ));
  }
}
