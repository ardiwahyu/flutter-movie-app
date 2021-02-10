import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';

class Genre extends StatelessWidget {
  const Genre({
    Key key,
    this.text,
    this.background
  }) : super(key: key);

  final String text;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/4),
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: background,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }
}