import 'package:flutter/material.dart';
import 'package:note_app/views/widget/color_list_views.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = KcolorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: KcolorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = KcolorsList[index].value;
                setState(() {});
              },
              child: colorItem(
                color: KcolorsList[index],
                isChoocsen: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
