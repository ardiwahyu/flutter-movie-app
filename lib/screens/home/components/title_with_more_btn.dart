import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';

class TittleWithMoreBtn extends StatefulWidget {
  const TittleWithMoreBtn({
    Key key,
    this.text,
    this.onPressed
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  _TittleWithMoreBtnState createState() => _TittleWithMoreBtnState();
}

class _TittleWithMoreBtnState extends State<TittleWithMoreBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TextWithUnderline(text: widget.text),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: widget.onPressed,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TextWithUnderline extends StatelessWidget {
  const TextWithUnderline({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}