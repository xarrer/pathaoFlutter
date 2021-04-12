import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WhatsNewFeature extends StatefulWidget {
  @override
  _WhatsNewFeatureState createState() => _WhatsNewFeatureState();
}

class _WhatsNewFeatureState extends State<WhatsNewFeature> {
  List<String> str = ['All', 'Trending', 'Food'];

  //Listing the images for carousel Slider
  List<Widget> carouselImage = [
    Image(
      width: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage('assets/images/promos/carousel3.jpg'),
    ),
    Image(
      width: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage('assets/images/promos/carousel4.png'),
    ),
    Image(
      width: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage('assets/images/promos/carousel1.jpg'),
    ),
    Image(
      width: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage('assets/images/promos/carousel2.jpg'),
    ),
  ];

  int selectedIndex = 0;
//Changing index to 3 buttons by the function below
  void changeIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //custom button widget for pathao only
  Widget customButton(String txt, index) {
    return FlatButton(
        minWidth: 50,
        color: selectedIndex == index ? Colors.red : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(
              color: selectedIndex == index ? Colors.transparent : Colors.grey),
        ),
        onPressed: () {
          changeIndex(index);
          // print(index);
        },
        child: Text(
          txt,
          style: TextStyle(
              color: selectedIndex == index ? Colors.white : Colors.black),
        ));
  }

  //main function for whats new page
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.0, top: 20.0, bottom: 0.0),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What\'s New',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          ),
          //row of 3 buttons all, trending and food
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              customButton(str[0], 0),
              SizedBox(
                width: 10.0,
              ),
              customButton(str[1], 1),
              SizedBox(
                width: 10.0,
              ),
              customButton(str[2], 2),
            ],
          ),
          //main carousel page
          CarouselSlider(
            items: carouselImage,
            options: CarouselOptions(
              height: 180,
              autoPlay: true,
              initialPage: 0,
              enableInfiniteScroll: false,
            ),
          ),

          SizedBox(
            height: 5,
          ),
          Container(
            height: 20,
            color: Colors.grey.shade200,
          )
        ],
      ),
    );
  }
}
