import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainBig extends StatefulWidget {

  @override
  _MainBigState createState() => _MainBigState();
}

class _MainBigState extends State<MainBig> {
  double get imgHeight => MediaQuery.of(context).size.height;

  double get imageWidth => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgHeight-60.0,
      width: imageWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/webpage.jpg'), fit: BoxFit.fill),
      ),
      padding: EdgeInsets.fromLTRB(20,imageWidth/4,imageWidth/3, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'We rise by lifting others.',
            style: TextStyle(
                fontFamily: 'Trajan Pro',
                fontSize: 80.0,
                color: Colors.white,
                letterSpacing: 5.0),
          ),

        ],
      ),
    );
  }
}
