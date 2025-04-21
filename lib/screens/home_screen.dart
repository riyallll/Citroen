import 'package:flutter/material.dart';
import '../data/menu_items.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/menu_item_tile.dart';
import '../widgets/vertical_divider.dart';
import 'new_cars_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarWidget(),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 40.0),
                child: Image.asset('assets/images/Asset1xhdpi2.png', height: 80, width: 80),
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Left Column
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(4, (index) {
                          final item = menuItems[index];
                          return MenuItemTile(
                            item: item,
                            onTap: () {
                              if (item.title.contains('New')) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NewCarsScreen()),
                                );
                              }
                            },
                          );
                        }),
                      ),
                    ),

                    /// Divider
                    const VerticalDividerWidget(),

                    /// Right Column
                    Expanded(
                      child: Column(
                        children: List.generate(4, (index) {
                          final item = menuItems[index + 4];
                          return MenuItemTile(item: item);
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
