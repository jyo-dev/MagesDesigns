import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationClass extends StatelessWidget {
  final String title;

  const NavigationClass(
      this.title, {
        Key key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontFamily: 'Trajan Pro',
        color: Colors.white,
      ),
    );
  }
}
