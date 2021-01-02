import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowContainers extends StatelessWidget {
  final String pic;
  final String title;
  final String subtitle;
  final String pic2;
  final String title2;
  final String subtitile2;
  final String pic3;
  final String title3;
  final String subtitile3;

  RowContainers(
      {this.pic,
      this.title,
      this.subtitle,
      this.pic2,
      this.title2,
      this.subtitile2,
      this.pic3,
      this.title3,
      this.subtitile3});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Color(0xff1B2433),
              ),
              child: Row())
        ],
      ),
    );
  }
}
