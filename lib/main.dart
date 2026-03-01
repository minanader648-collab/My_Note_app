import 'package:flutter/material.dart';
import 'package:my_note/views/notes_views.dart';

void main() {
  runApp(const my_note());
}

class my_note extends StatelessWidget {
  const my_note({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
