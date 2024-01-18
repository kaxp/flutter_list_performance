import 'package:flutter/material.dart';
import 'package:flutter_performance/home/model/movies.dart';

class ListTileCell extends StatelessWidget {
  const ListTileCell({required this.movieData});

  final Movies movieData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(movieData.title),
      subtitle: Text(movieData.genre),
      trailing: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(
            Radius.circular(999),
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: Image(
          image: NetworkImage(
            movieData.images[0],
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
