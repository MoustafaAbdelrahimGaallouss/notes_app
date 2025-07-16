import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubite/add_note_cubit_cubit.dart';

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
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: KcolorsList.length, // ExLample count, adjust as needed
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                selectedColorIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = KcolorsList[index];
                setState(() {});
              },
              child: colorItem(
                isChoocsen: selectedColorIndex == index,
                color: KcolorsList[index], // Example condition for selection
              ),
            ),
          );
        },
      ),
    );
  }
}
