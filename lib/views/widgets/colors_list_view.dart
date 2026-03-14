import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 30, backgroundColor: color),
          )
        : CircleAvatar(radius: 32, backgroundColor: color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color.fromARGB(255, 237, 245, 255),
    Color.fromARGB(255, 116, 161, 190),
    Color.fromARGB(255, 255, 145, 133),
    Color.fromARGB(255, 201, 230, 255),
    Color.fromARGB(255, 212, 255, 196),
    Color.fromARGB(255, 221, 156, 141),
    Color.fromARGB(255, 247, 157, 213),
    Color.fromARGB(255, 106, 255, 143),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
