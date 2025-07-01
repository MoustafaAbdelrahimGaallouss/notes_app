import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';


class customTextField extends StatelessWidget {
  customTextField({super.key, required this.itemName});

  String itemName;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(vertical:itemName =='content'100 ),
          hintText: itemName,
          hintStyle: TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(width: 2, color: Color ?? Colors.white));
  }
}
