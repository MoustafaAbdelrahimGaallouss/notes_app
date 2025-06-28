import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/widget/Custom_app_bar.dart';

class notesViewBody extends StatelessWidget {
  const notesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      child: Column(
        children: [
          customAppBar(),
          SizedBox(
            height: 20,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 16, bottom: 24),
      decoration: BoxDecoration(
        color: Color(0xffFFcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
              ),
              child: Text(
                'Build your career with Moustafa Abd El Rahim',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4), fontSize: 20),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                FontAwesomeIcons.trash,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                // Handle delete action
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24.0,
            ),
            child: Text(
              'May12,2025',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

// class notesList extends StatelessWidget {
//   const notesList({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         child: ListView.builder(
//           itemCount: 10,
//           itemBuilder: (context, index) {
//             return Container(
//                 width: 24,
//                 height: 50,
//                 child: Text('Note',
//                     style: TextStyle(color: Colors.white, fontSize: 18)));
//           },
//         ),
//       ),
//     );
//   }
// }
