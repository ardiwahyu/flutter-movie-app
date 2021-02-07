import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';
import 'package:sub_flutter_pemula/screens/detail/detail_screen.dart';
import 'package:sub_flutter_pemula/screens/home/components/genre.dart';
import 'package:sub_flutter_pemula/screens/home/components/latest_movie_card.dart';

class LatestMovie extends StatelessWidget {
  const LatestMovie({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          LatestMovieCard(
            image: "assets/images/img_4.png",
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                              image: "assets/images/img_6.png",
                              time: "112 Menit",
                              title: "Aquaman",
                              genres: <Widget>[
                                Genre(
                                    text: "Action",
                                    background: Colors.redAccent),
                                Genre(
                                  text: "Adventure",
                                  background: Colors.orange,
                                )
                              ])));
            },
          ),
          LatestMovieCard(
            image: "assets/images/img_5.png",
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                              image: "assets/images/img_7.png",
                              time: "98 Menit",
                              title: "Inception",
                              genres: <Widget>[
                                Genre(
                                    text: "Action",
                                    background: Colors.redAccent),
                                Genre(
                                  text: "Fiction",
                                  background: Colors.brown,
                                )
                              ])));
            },
          ),
          SizedBox(width: kDefaultPadding)
        ],
      ),
    );
  }
}
