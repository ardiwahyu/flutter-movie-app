import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';
import 'package:sub_flutter_pemula/screens/detail/components/image_and_icon.dart';

class Body extends StatefulWidget {
  const Body({
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
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcon(image: widget.image),
          Container(
            padding: EdgeInsets.only(left: kDefaultPadding),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.title,
                        style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 32)),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      child: Row(
                        children: widget.genres,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Text(
                      widget.time,
                      style: TextStyle(fontSize: 16, color: kTextColor),
                    ))
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
