import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widget/custon_text_field.dart';

class addNoteModelsButtonSheet extends StatelessWidget {
  const addNoteModelsButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
      child: Column(
        children: [
          customTextField(
            itemName: 'Title',
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
