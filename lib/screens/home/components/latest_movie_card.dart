import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';

class LatestMovieCard extends StatefulWidget {
  const LatestMovieCard({
    Key key,
    this.image,
    this.onClick
  }) : super(key: key);

  final String image;
  final Function onClick;

  @override
  _LatestMovieCardState createState() => _LatestMovieCardState();
}

class _LatestMovieCardState extends State<LatestMovieCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
          margin: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding,
              bottom: kDefaultPadding * 2),
          width: size.width * 0.8,
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding * .5)),
              child: Image.asset(widget.image))
      ),
    );
  }
}