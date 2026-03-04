import 'package:flutter/material.dart';
import 'package:my_note/views/widgets/custom_appbar.dart';
import 'package:my_note/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: "Edit Note", icon: Icons.check),
          SizedBox(height: 40),
          CustomTextField(hint: "Title"),
          SizedBox(height: 20),
          CustomTextField(hint: "Content", maxLine: 5),
        ],
      ),
    );
  }
}
