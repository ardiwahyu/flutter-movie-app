import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconCard extends StatefulWidget {
  const IconCard({
    Key key,
    this.image
  }) : super(key: key);

  final String image;

  @override
  _IconCardState createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      child: SvgPicture.asset(widget.image),
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.2)
            ),
            BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.white
            ),
          ]
      ),
    );
  }
}