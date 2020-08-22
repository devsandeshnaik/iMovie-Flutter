import 'package:flutter/material.dart';
import '../Model/Movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  MovieCard({this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.network(
            movie.posterPath,
            height: 180,
            width: 160,
            fit: BoxFit.fill,
            color: Colors.teal,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  movie.title,
                  maxLines: 1,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textWidthBasis: TextWidthBasis.parent,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  movie.overview,
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textWidthBasis: TextWidthBasis.parent,
                  maxLines: 5,
                ),
                Spacer()
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            height: 180,
            width: MediaQuery.of(context).size.width - 180,
          )
        ],
      ),
    );
  }
}
