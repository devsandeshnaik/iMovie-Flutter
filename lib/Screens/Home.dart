import 'package:flutter/material.dart';
import 'package:imovie/Helpers/Constants.dart';
import 'package:imovie/NetworkCalls/NowPlayingMoviesAPICall.dart';
import 'package:imovie/Screens/MovieCard.dart';

import '../Model/Movie.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  List<Movie> movies = [];

  @override
  void initState() {
    NowPlayingMovieAPI.getMovies(Constants.NowPlayingMovieAPI).then((value) {
      setState(() {
        movies = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('iMovie'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (_, index) {
          return MovieCard(
            movie: movies[index],
          );
        },
      ),
    );
  }
}
