//dummy json model class
class Movies {
  Movies({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.poster,
    required this.images,
  });

  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String poster;
  final List<String> images;
}

enum Response { TRUE }

enum Type { MOVIE, SERIES }
