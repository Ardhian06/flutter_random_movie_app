import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: MovieApp(),
    ),
  );
}

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: const Text('Movie Recommender'),
        centerTitle: true,
      ),
      body: Movie(),
    );
  }
}

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  int movieNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'MOVIES FOR YOU TO WATCH',
            style: TextStyle(
              fontFamily: 'Bebas Neue',
              color: Colors.red.shade700,
              fontSize: 25.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Image.asset(
            'images/movie$movieNumber.jpg',
            height: 400,
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            width: 150.0,
            child: Card(
              color: Colors.red.shade700,
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  setState(() {
                    movieNumber = Random().nextInt(5) + 1;
                  });
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.next_plan_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Next',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
