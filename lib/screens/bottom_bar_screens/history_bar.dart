import 'package:flutter/material.dart';
import 'package:pathaocloneapp/screens/reusableitems/app_bar.dart';

class HistoryBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Center(
        child: Text('History Comming Soon'),
      ),
    );
  }
}
