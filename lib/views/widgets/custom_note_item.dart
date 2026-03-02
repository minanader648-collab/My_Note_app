import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 22, bottom: 22, left: 14),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 251, 186, 88),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 10),
              child: Text(
                "Build your Career with Mina Nader",
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 91, 91),
                  fontSize: 15.0,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 30.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Text(
              "March 3,2026",
              style: TextStyle(
                color: Color.fromARGB(255, 91, 91, 91),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}