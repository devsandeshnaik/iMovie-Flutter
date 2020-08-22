import './Movie.dart';

class Dates {
  String maximum;
  String minimun;

  Dates({this.maximum, this.minimun});

  factory Dates.fromJSON(Map<String, dynamic> json) {
    return Dates(maximum: json['maximum'], minimun: json['minumum']);
  }
}

class APIResponse {
  List<Movie> result;
  num page;
  num totalResults;
  Dates dates;
  num totalPages;

  APIResponse(
      {this.result, this.page, this.totalPages, this.dates, this.totalResults});

  factory APIResponse.fromJSON(Map<String, dynamic> json) {
    return APIResponse(
        dates: Dates.fromJSON(json['dates']),
        result: APIResponse.getMovieList(json['results']),
        page: json['page'],
        totalResults: json['total_results'],
        totalPages: json['total_pages']);
  }

  static List<Movie> getMovieList(List<dynamic> movieList) {
    List<Movie> movies = [];
    movieList.forEach((element) {
      movies.add(Movie.fromJSON(element));
    });

    return movies;
  }
}
