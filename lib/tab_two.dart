import 'package:flutter/material.dart';
import 'package:flutter_performance/movies.dart';

import 'list_tile.dart';

class TabTwo extends StatelessWidget {
  const TabTwo({required this.moviesList});

  final List<Movies> moviesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Map with SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...moviesList.map(
              (movieData) => ListTileCell(movieData: movieData),
            )
          ],
        ),
      ),
    );
  }
}
