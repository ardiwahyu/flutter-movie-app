import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/screens/home/components/latest_movie.dart';
import 'package:sub_flutter_pemula/screens/home/components/recommended_movie.dart';
import 'package:sub_flutter_pemula/screens/home/components/title_with_more_btn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            HeaderWithSearchBox(),
            TittleWithMoreBtn(
              text: "Recommended",
              onPressed: () {},
            ),
            RecommendedMovie(),
            TittleWithMoreBtn(
              text: "Latest Movie",
              onPressed: () {},
            ),
            LatestMovie()
          ]
    ));
  }
}