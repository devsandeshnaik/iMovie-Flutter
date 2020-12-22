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
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: _borderRadius,
                topRight: _borderRadius,
              ),
            ),
            width: double.infinity,
            height: _parentSize(context).height * 0.7,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 32, left: 16, right: 12, bottom: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          _movie.title,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 44),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                          child: Center(
                            child: Text(
                              _movie.voteAverage.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          padding: EdgeInsets.only(right: 16, left: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: Colors.yellow,
                          ),
                          height: 32,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Text(
                      _movie.overview,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.red.withAlpha(0),
        splashColor: Colors.white.withAlpha(0),
        elevation: 0,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Size _parentSize(BuildContext context) => MediaQuery.of(context).size;
}
