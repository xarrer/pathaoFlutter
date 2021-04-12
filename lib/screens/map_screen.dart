import 'package:flutter/material.dart';

class MainMapFunctionality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 20.0,
                ),
                Text(
                  'Current Location Here',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 15.0,
          ),
        ],
      ),
    );
  }
}
