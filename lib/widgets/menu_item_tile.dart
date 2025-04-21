import 'package:flutter/material.dart';
import '../models/menu_item.dart';

class MenuItemTile extends StatelessWidget {
  final MenuItem item;
  final VoidCallback? onTap;

  const MenuItemTile({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Image.asset(item.image, height: 25),
                const SizedBox(height: 8),
                Text(item.title, style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 6),
                Image.asset("assets/images/arrowxhdpi.png", height: 25),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        Image.asset("assets/images/linexhdpi.png", height: 1),
        const SizedBox(height: 10),
      ],
    );
  }
}
