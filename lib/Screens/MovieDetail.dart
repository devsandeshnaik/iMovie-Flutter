import 'package:flutter/material.dart';
import 'package:imovie/Model/Movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie _movie;
  Radius _borderRadius = Radius.circular(44);
  MovieDetail(this._movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.network(
          _movie.backDropImageURL(),
          width: double.infinity,
          height: 333,
          fit: BoxFit.cover,
        ),
        Column(children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.only(
                topLeft: _borderRadius,
                topRight: _borderRadius,
              ),
            ),
            width: double.infinity,
            height: _parentSize(context).height * 0.7,
            child: Column(
              children: [
                Text(
                  _movie.title,
                ),
              ],
            ),
          )
        ])
      ]),
    );
  }

  Size _parentSize(BuildContext context) => MediaQuery.of(context).size;
}
