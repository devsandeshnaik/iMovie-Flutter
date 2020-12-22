import 'package:flutter/material.dart';
import 'package:imovie/Screens/Home.dart';

main() => runApp(IMovieApp());

class IMovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
