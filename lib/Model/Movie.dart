class Movie {
  num id;
  String title;
  String overview;
  double popularity;
  num voteCount;
  bool video;
  bool adult;
  String backdropPath;
  String posterPath;
  String originalLanguage;
  String originalTitle;
  List<dynamic> genreIds;
  num voteAverage;
  String releaseDate;

  Movie(
      {this.id,
      this.title,
      this.overview,
      this.popularity,
      this.voteCount,
      this.video,
      this.adult,
      this.backdropPath,
      this.posterPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.voteAverage,
      this.releaseDate});

  factory Movie.fromJSON(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        overview: json['overview'],
        popularity: json['popularity'],
        voteCount: json['vote_count'],
        video: json['video'],
        adult: json['adult'],
        backdropPath: json['backdrop_path'],
        posterPath: json['poster_path'],
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'],
        genreIds: json['genre_ids'],
        voteAverage: json['vote_average']);
  }

  String posterImageURL() {
    var imagePath = "https://image.tmdb.org/t/p/original" + posterPath;
    print(imagePath);
    return imagePath;
  }

  String backDropImageURL() {
    var imagePath = "https://image.tmdb.org/t/p/original" + backdropPath;
    print(imagePath);
    return imagePath;
  }
}
