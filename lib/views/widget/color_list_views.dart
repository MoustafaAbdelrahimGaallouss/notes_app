import 'package:flutter/material.dart';

class colorItem extends StatelessWidget {
  const colorItem({super.key, required this.isChoocsen, required this.color});
  final bool isChoocsen;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isChoocsen
        ? Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: color,
              ),
              Center(child: Icon(Icons.done, size: 42))
            ],
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}

class colorsListView extends StatefulWidget {
  const colorsListView({super.key});

  @override
  State<colorsListView> createState() => _colorsListViewState();
}

class _colorsListViewState extends State<colorsListView> {
  int selectedColorIndex = 0; // Example index for selected color
  List<Color> colorsList = [
    Color(0xffD7DEDC),
    Color(0xff9A879D),
    Color(0xff0094C6),
    Color(0xff7A3B69),
    Color(0xff563440),
    Color(0xffF2C94C),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length, // Example count, adjust as needed
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                selectedColorIndex = index;
                setState(() {});
              },
              child: colorItem(
                isChoocsen: selectedColorIndex == index,
                color: colorsList[index], // Example condition for selection
              ),
            ),
          );
        },
      ),
    );
  }
}
