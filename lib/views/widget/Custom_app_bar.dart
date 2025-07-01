import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_search_icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
    required this.title, required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        customSearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
