import 'package:flutter/material.dart';
import 'package:note_app/views/widget/Custom_app_bar.dart';
import 'package:note_app/views/widget/custom_button.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 50,
          ),
          customAppBar(
            title: 'Edit Note',
            icon: Icons.done,
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
    );
  }
}
