import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved, this.onChanged});

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
 final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged ,
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
