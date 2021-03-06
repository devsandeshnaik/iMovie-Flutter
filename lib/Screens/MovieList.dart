import 'package:flutter/material.dart';
import '../Model/Movie.dart';
import 'MovieCard.dart';
import '../NetworkCalls/MoviesAPICall.dart';
import 'MovieDetail.dart';

class MovieList extends StatefulWidget {
  final String _url;
  MovieList(this._url);
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  List<Movie> movies = [];

  @override
  void initState() {
    print(widget._url);
    MovieAPI.getMovies(widget._url).then((value) {
      setState(() {
        movies = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (movies != null) {
      return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (_, index) {
          return MovieCard(
            movie: movies[index],
            onTap: didSelectMovie,
          );
        },
      );
    } else {
      return Center(child: Text("No Movies"));
    }
  }

  didSelectMovie(Movie movie) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MovieDetail(movie)));
  }
}
