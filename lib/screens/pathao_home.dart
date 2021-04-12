import 'package:flutter/material.dart';
import 'package:pathaocloneapp/screens/map_screen.dart';
import 'package:pathaocloneapp/screens/reusableitems/app_bar.dart';
import 'package:pathaocloneapp/screens/tabbed_carousel.dart';
import 'package:pathaocloneapp/screens/whats_new.dart';

import 'home_work_location.dart';

class PathaoHome extends StatefulWidget {
  @override
  _PathaoHomeState createState() => _PathaoHomeState();
}

class _PathaoHomeState extends State<PathaoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1) Adding Map Functionality
            MainMapFunctionality(),
            // 2) Add Tabbed Carousel
            TabbedCarousel(),
            // 3) Add Whats new Features with 3 buttons All, Trending, Food image carousel
            WhatsNewFeature(),
            // 4) Where would you Like to go?
            HomeandOfficeLocations(),
            // Two buttons Flat with black Border Outline Home/ Work
            // 5) Search For different Destination
            // 6) Discounts Bar
            // 7) Bottom Bar with 5 buttons Home/Ibox/History/More(settings)
          ],
        ),
      ),
    );
  }
}
