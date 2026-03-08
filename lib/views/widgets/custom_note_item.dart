import 'package:flutter/material.dart';
import 'package:my_note/models/note_model.dart';
import 'package:my_note/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 22, bottom: 22, left: 14),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 10),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Color.fromARGB(255, 91, 91, 91),
                    fontSize: 15.0,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: Icon(Icons.delete, color: Colors.black, size: 30.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 91, 91),
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
