import 'package:movies_app/models/movie.dart';

class MoviesResponse {
  MoviesResponse({
    required this.dates,
    required this.page,
    required this.movies,
    required this.totalPages,
    required this.totalMovies,
  });

  Dates dates;
  int page;
  List<Movie> movies;
  int totalPages;
  int totalMovies;

  factory MoviesResponse.fromJson(Map<String, dynamic> json) => MoviesResponse(
        dates: Dates.fromJson(json["dates"]),
        page: json["page"],
        movies: List<Movie>.from(json["movies"].map((x) => Movie.fromJson(x))),
        totalPages: json["total_pages"],
        totalMovies: json["total_movies"],
      );

  Map<String, dynamic> toJson() => {
        "dates": dates.toJson(),
        "page": page,
        "movies": List<dynamic>.from(movies.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_movies": totalMovies,
      };
}

class Dates {
  Dates({
    required this.maximum,
    required this.minimum,
  });

  DateTime maximum;
  DateTime minimum;

  factory Dates.fromJson(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json["maximum"]),
        minimum: DateTime.parse(json["minimum"]),
      );

  Map<String, dynamic> toJson() => {
        "maximum":
            "${maximum.year.toString().padLeft(4, '0')}-${maximum.month.toString().padLeft(2, '0')}-${maximum.day.toString().padLeft(2, '0')}",
        "minimum":
            "${minimum.year.toString().padLeft(4, '0')}-${minimum.month.toString().padLeft(2, '0')}-${minimum.day.toString().padLeft(2, '0')}",
      };
}