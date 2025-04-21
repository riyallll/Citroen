import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0066A5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/Artboard2copy2xhdpi.png", height: 40),
            ),
            Row(
              children: [
                Image.asset("assets/images/HOMExxxhdpi.png", height: 30),
                Image.asset("assets/images/CALLxxxhdpi.png", height: 30),
                Image.asset("assets/images/NOTIFICATIONxxxhdpi.png", height: 30),
                Image.asset("assets/images/SEARCHxxxhdpi.png", height: 30),
                const Icon(Icons.more_vert, color: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
