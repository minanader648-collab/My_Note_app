import 'package:flutter/material.dart';
import 'package:my_note/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: const TextStyle(fontSize: 30)),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}
