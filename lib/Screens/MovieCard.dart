import 'package:flutter/material.dart';
import '../Model/Movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final Function(Movie) onTap;
  MovieCard({this.movie, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Row(
          children: [
            Image.network(
              movie.posterImageURL(),
              // repeat: ImageRepeat.noRepeat,
              height: 180,
              width: 160,
              fit: BoxFit.contain,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    movie.title,
                    maxLines: 1,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
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
      ),
      onTap: () {
        this.onTap(movie);
      },
    );
  }
}
