import 'package:flutter/material.dart';
import 'package:imovie/Helpers/Constants.dart';
import 'MovieList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('iMovie'),
          bottom: TabBar(
            tabs: [Tab(text: 'Now Playing'), Tab(text: "Top Rated")],
          ),
        ),
        body: TabBarView(
          children: [
            MovieList(Constants.NowPlayingMovieAPI),
            MovieList(Constants.TopRatedMovieAPI)
          ],
        ),
      ),
    );
  }
}
