import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';

class RecommendedMovieCard extends StatelessWidget {
  const RecommendedMovieCard({Key key, this.image, this.title, this.genres, this.onClick})
      : super(key: key);

  final String image;
  final String title;
  final List<Widget> genres;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onClick,
      child: Container(
          margin: EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding,
              bottom: kDefaultPadding * 2),
          width: size.width * 0.4,
          child: Column(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding / 1.5),
                      topRight: Radius.circular(kDefaultPadding / 1.5)),
                  child: Image.asset(
                    image,
                  )),
              Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kPrimaryColor.withOpacity(0.23))
                    ]),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(title.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          child: Row(
                            children: genres,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
