import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/constans.dart';
import 'package:sub_flutter_pemula/screens/detail/detail_screen.dart';
import 'package:sub_flutter_pemula/screens/home/components/genre.dart';
import 'package:sub_flutter_pemula/screens/home/components/recommended_movie_card.dart';

class RecommendedMovie extends StatelessWidget {
  const RecommendedMovie({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedMovieCard(
            image: "assets/images/img_1.png",
            title: "Gundala",
            genres: <Widget>[
              Genre(text: "Action", background: Colors.redAccent),
              Genre(text: "Superhero", background: Colors.blue)
            ],
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                              image: "assets/images/img_1.png",
                              time: "123 Menit",
                              title: "Gundala",
                              genres: <Widget>[
                                Genre(
                                    text: "Action",
                                    background: Colors.redAccent),
                                Genre(
                                    text: "Superhero", background: Colors.blue)
                              ])));
            },
          ),
          RecommendedMovieCard(
            image: "assets/images/img_2.png",
            title: "Bali",
            genres: <Widget>[Genre(text: "Drama", background: Colors.green)],
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                              image: "assets/images/img_2.png",
                              time: "56 Menit",
                              title: "Bali",
                              genres: <Widget>[
                                Genre(text: "Drama", background: Colors.green)
                              ])));
            },
          ),
          RecommendedMovieCard(
            image: "assets/images/img_3.png",
            title: "Bumi Manusia",
            genres: <Widget>[Genre(text: "Drama", background: Colors.green)],
            onClick: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                              image: "assets/images/img_3.png",
                              time: "181 Menit",
                              title: "Bumi Manusia",
                              genres: <Widget>[
                                Genre(text: "Drama", background: Colors.green)
                              ])));
            },
          ),
          SizedBox(width: kDefaultPadding)
        ],
      ),
    );
  }
}
