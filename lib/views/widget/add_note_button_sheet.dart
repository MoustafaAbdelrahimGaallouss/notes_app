import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widget/custom_button.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class addNoteModelsButtonSheet extends StatelessWidget {
  const addNoteModelsButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Note',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            customTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 24,
            ),
            customTextField(
              hintText: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 40,
            ),
            customButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
