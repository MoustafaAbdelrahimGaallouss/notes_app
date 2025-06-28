import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_search_icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        customSearchIcon()
      ],
    );
  }
}
