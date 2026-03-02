import 'package:flutter/material.dart';
import 'package:my_note/views/notes_views.dart';

void main() {
  runApp(const MyNote());
}

class MyNote extends StatelessWidget {
  const MyNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NotesView(),
    );
  }
}
