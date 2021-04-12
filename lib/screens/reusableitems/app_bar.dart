import 'package:flutter/material.dart';

Widget customAppBar() {
  return AppBar(
    elevation: 0.1,
    title: Row(
      children: [
        Image(
          height: 30,
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/images/pathao-logo.png'),
        ),
      ],
    ),
  );
}
