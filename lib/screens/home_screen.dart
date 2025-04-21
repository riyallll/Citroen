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
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double contentWidth = screenWidth > 800 ? 800 : screenWidth * 0.95;

            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: contentWidth),
                  child: Column(
                    children: [
                      /// Top-right icon
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 20.0),
                          child: Image.asset(
                            'assets/images/Asset1xhdpi2.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),

                      const SizedBox(height: 50),

                      /// Menu columns
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(4, (index) {
                                final item = menuItems[index + 4];
                                return MenuItemTile(item: item);
                              }),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
