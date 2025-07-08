import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class customTextField extends StatelessWidget {
  customTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});

  final String hintText;
  final int maxLines;
  void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required ,Please enter ';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          // contentPadding: EdgeInsets.symmetric(vertical:itemName =='content'100 ),
          hintText: hintText,
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
