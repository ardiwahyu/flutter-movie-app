import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sub_flutter_pemula/screens/detail/components/icon_card.dart';

class ImageAndIcon extends StatefulWidget {
  const ImageAndIcon({
    Key key,
    this.image
  }) : super(key: key);

  final String image;

  @override
  _ImageAndIconState createState() => _ImageAndIconState();
}

class _ImageAndIconState extends State<ImageAndIcon> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 1.5),
      child: SizedBox(
        height: size.height * 0.75,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(image: "assets/icons/play_movie.svg"),
                    IconCard(image: "assets/icons/direct-download.svg"),
                    IconCard(image: "assets/icons/heart.svg")
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)
                  ),
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.3)
                  )],
                  image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.image)
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}