import 'package:flutter/material.dart';
import 'package:pathaocloneapp/screens/reusableitems/reusable_card.dart';

class TabbedCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.grey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          reusableCard(Icons.two_wheeler, 'Bike'),
          reusableCard(Icons.airport_shuttle, 'Car'),
          reusableCard(Icons.fastfood, 'Food'),
          reusableCard(Icons.videogame_asset, 'Games'),
        ],
      ),
    );
  }
}
