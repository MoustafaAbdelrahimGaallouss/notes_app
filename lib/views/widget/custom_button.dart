import 'package:flutter/material.dart';

import '../../constants.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    required this.onPressed,  this.isLoading=false,
  });
  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child:isLoading? const CircularProgressIndicator(color: Colors.black,): Text(
          'Add',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
