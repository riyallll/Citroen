import 'package:citroen_project/widgets/menu_item_tile.dart';
import 'package:flutter/material.dart';
import '../data/car_items.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/car_item_tile.dart';
import '../widgets/vertical_divider.dart';

class NewCarsScreen extends StatelessWidget {
  const NewCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Top-right icon
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 40.0),
                  child: Image.asset(
                    'assets/images/Asset1xhdpi2.png',
                    height: 80,
                    width: 80,
                  ),
                ),
              ),

              /// Header title
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'NEW CARS',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              /// Content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Left Column
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(3, (index) {
                          final item = carItems[index];
                          return CarItemTile(item: item);
                        }),
                      ),
                    ),

                    /// Center Divider
                    const VerticalDividerWidget(),

                    /// Right Column
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(3, (index) {
                          final item = carItems[index + 3];
                          return CarItemTile(item: item);
                        }),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              /// Bottom right icon
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0, right: 40.0),
                  child: Image.asset(
                    'assets/images/Asset12xhdpi.png',
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
