import 'package:flutter/material.dart';
import 'package:note_app/views/widget/Custom_app_bar.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        children: [
          customAppBar(),
        ],
      ),
    ));
  }
}
