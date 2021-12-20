import 'package:flutter/material.dart';
import 'package:flutter_performance/tab_one.dart';
import 'package:flutter_performance/tab_two.dart';

import 'home_view_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Performance',
          ),
          centerTitle: true,
          elevation: 0,
          leading: Icon(
            Icons.menu,
          ),
        ),
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabOne(
                                      moviesList: HomeViewModel.displayMovies,
                                    )));
                      },
                      child: Text("Go to ListView")),
                  SizedBox(
                    height: 36,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabTwo(
                                      moviesList: HomeViewModel.displayMovies,
                                    )));
                      },
                      child: Text("Go to SingleChild + Map")),
                ],
              ),
            )));
  }
}
