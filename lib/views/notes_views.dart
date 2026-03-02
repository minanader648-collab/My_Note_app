import 'package:flutter/material.dart';
import 'package:my_note/views/widgets/notes_view_bady.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 66, 66, 66),
      ),
      body: const NotesViewBody(),
    );
  }
}
