import 'package:flutter/material.dart';
import 'package:my_note/views/custom_text_field.dart';
import 'package:my_note/views/widgets/CustomBottom_Add.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.0),
            CustomTextField(hint: "Title"),
            SizedBox(height: 20.0),
            CustomTextField(hint: "Content", maxline: 5),
            SizedBox(height: 20.0),
            CustomBottom(),
            SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
