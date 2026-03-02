import 'package:flutter/material.dart';
import 'package:my_note/views/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [SizedBox(height: 40.0), CustomTextField()]),
    );
  }
}
