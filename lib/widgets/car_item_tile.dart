import 'package:flutter/material.dart';
import '../models/car_item.dart';

class CarItemTile extends StatelessWidget {
  final CarItem item;

  const CarItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Image.asset(item.image, height: 40),
              const SizedBox(height: 8),
              Text(item.title, style: const TextStyle(fontSize: 14)),
              const SizedBox(height: 6),
              Image.asset("assets/images/arrowxhdpi.png", height: 25),
              const SizedBox(height: 10),

            ],
          ),
        ),
        Image.asset("assets/images/linexhdpi.png", height: 1),
        const SizedBox(height: 10),
      ],
    );
  }
}
