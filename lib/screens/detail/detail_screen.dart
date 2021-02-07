import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';

import 'components/body.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key key,
    this.title,
    this.image,
    this.time,
    this.genres
  }): super(key: key);

  final String title;
  final String image;
  final String time;
  final List<Widget> genres;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(title: widget.title, image: widget.image, time: widget.time, genres: widget.genres),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(kDefaultPadding * 1.5))),
              width: size.width * 0.5,
              child: Text(
                "Watch now",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width * 0.5,
              child: Text(
                "Description",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kTextColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
