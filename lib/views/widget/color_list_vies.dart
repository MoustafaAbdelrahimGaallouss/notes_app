import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.blue,
    );
  }
}

class colorsListView extends StatelessWidget {
  const colorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Example count, adjust as needed
        itemBuilder: (context, index) {
          return const colorItem();
        },
      ),
    );
  }
}
