import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';

class Genre extends StatefulWidget {
  const Genre({
    Key key,
    this.text,
    this.background
  }) : super(key: key);

  final String text;
  final Color background;

  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/4),
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widget.background,
      ),
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }
}