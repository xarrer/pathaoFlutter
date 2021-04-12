import 'package:flutter/material.dart';

Widget reusableCard(IconData icData, String label) {
  return GestureDetector(
    onTap: () {
      print(label);
    },
    child: Container(
      height: 90,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icData,
            color: Colors.red,
            size: 40.0,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
                letterSpacing: -1.2),
          )
        ],
      ),
    ),
  );
}
