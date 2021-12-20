import 'package:flutter/material.dart';
import 'package:flutter_performance/list_tile.dart';
import 'package:flutter_performance/movies.dart';

class TabOne extends StatelessWidget {
  const TabOne({required this.moviesList});

  final List<Movies> moviesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('This is listview builder'),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: moviesList.length,
            itemBuilder: (context, index) {
              Movies movieData = moviesList[index];
              return ListTileCell(movieData: movieData);
            }));
  }
}
