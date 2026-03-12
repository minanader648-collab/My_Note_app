import 'package:flutter/material.dart';
import 'package:my_note/constants.dart';
import 'package:my_note/views/widgets/notes_view_body.dart';
import 'package:my_note/views/widgets/AddNote_bottom_sheet.dart';



class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            context: context,
            builder: (context) {
              return const AddNote();
            },
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
      body: const NotesViewBody(),
    );
  }
}