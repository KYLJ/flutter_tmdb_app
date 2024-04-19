class NowPlayingMovieDto {
  NowPlayingMovieDto({
      this.dateDto,
      this.page, 
      this.resultDtoList,
      this.totalPage,
      this.totalResult,});

  NowPlayingMovieDto.fromJson(dynamic json) {
    dateDto = json['dates'] != null ? DateDto.fromJson(json['dates']) : null;
    page = json['page'];
    if (json['results'] != null) {
      resultDtoList = [];
      json['results'].forEach((v) {
        resultDtoList?.add(ResultDto.fromJson(v));
      });
    }
    totalPage = json['total_pages'];
    totalResult = json['total_results'];
  }
  DateDto? dateDto;
  num? page;
  List<ResultDto>? resultDtoList;
  num? totalPage;
  num? totalResult;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (dateDto != null) {
      map['dates'] = dateDto?.toJson();
    }
    map['page'] = page;
    if (resultDtoList != null) {
      map['results'] = resultDtoList?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPage;
    map['total_results'] = totalResult;
    return map;
  }

}

class ResultDto {
  ResultDto({
      this.adult, 
      this.backdropPath, 
      this.genreIds, 
      this.id, 
      this.originalLanguage, 
      this.originalTitle, 
      this.overview, 
      this.popularity, 
      this.posterPath, 
      this.releaseDate, 
      this.title, 
      this.video, 
      this.voteAverage, 
      this.voteCount,});

  ResultDto.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
  bool? adult;
  String? backdropPath;
  List<num>? genreIds;
  num? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['id'] = id;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }

}

class DateDto {
  DateDto({
      this.maximum, 
      this.minimum,});

  DateDto.fromJson(dynamic json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }
  String? maximum;
  String? minimum;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    return map;
  }

}