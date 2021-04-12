import 'package:flutter/material.dart';

class HomeandOfficeLocations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Where would you like to go?",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                child: CustomPaint(
                  painter: RectanglePainter(),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                ),
              ),
              Row(
                children: [
                  customRowElement(Icons.home, 'Home', 'Home Location Here'),
                  Container(
                    height: 30.0,
                    width: 1.1,
                    color: Colors.grey[400],
                  ),
                  customRowElement(Icons.work, 'Work', 'Work Location Here'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget customRowElement(IconData icData, String _lTitle, String _location) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundColor:
            icData == Icons.home ? Colors.lightBlue[100] : Colors.grey[100],
        child: Icon(
          icData,
          size: 20.0,
          color: icData == Icons.home ? Colors.blue : Colors.grey,
        ),
      ),
      Column(
        children: [
          Text(
            _lTitle,
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
          ),
          Text(
            _location,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.normal,
                color: Colors.grey[600]),
          ),
        ],
      )
    ],
  );
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey[300]
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    var rect = Offset(0, 0) & Size(350, 100);

    canvas.drawRRect(RRect.fromRectXY(rect, 10.0, 10.0), paint);

    // Offset sP = Offset(0, size.height / 2);
    // Offset eP = Offset(size.width, size.height / 2);
    // Offset sP1 = Offset(size.width,size.height);
    // Offset

    // canvas.drawLine(sP, eP, paint);
    // canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
