class MovieDetailsDto {
  bool? adult;
  String? backdropPath;
  BelongsToCollectionDto? belongsToCollectionDto;
  num? budget;
  List<GenreDto>? genreDtoList;
  String? homepage;
  num? id;
  String? imdbId;
  List<String>? originCountry;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  List<ProductionCompanyDto>? productionCompanyDtoList;
  List<ProductionCountryDto>? productionCountryDtoList;
  String? releaseDate;
  num? revenue;
  num? runtime;
  List<SpokenLanguageDto>? spokenLanguageDtoList;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;

  MovieDetailsDto({
    this.adult,
    this.backdropPath,
    this.belongsToCollectionDto,
    this.budget,
    this.genreDtoList,
    this.homepage,
    this.id,
    this.imdbId,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanyDtoList,
    this.productionCountryDtoList,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguageDtoList,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  MovieDetailsDto.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    belongsToCollectionDto = json['belongs_to_collection'] != null
        ? BelongsToCollectionDto.fromJson(json['belongs_to_collection'])
        : null;
    budget = json['budget'];
    if (json['genres'] != null) {
      genreDtoList = [];
      json['genres'].forEach((v) {
        genreDtoList?.add(GenreDto.fromJson(v));
      });
    }
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    originCountry = json['origin_country'] != null
        ? json['origin_country'].cast<String>()
        : [];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      productionCompanyDtoList = [];
      json['production_companies'].forEach((v) {
        productionCompanyDtoList?.add(ProductionCompanyDto.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      productionCountryDtoList = [];
      json['production_countries'].forEach((v) {
        productionCountryDtoList?.add(ProductionCountryDto.fromJson(v));
      });
    }
    releaseDate = json['release_date'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    if (json['spoken_languages'] != null) {
      spokenLanguageDtoList = [];
      json['spoken_languages'].forEach((v) {
        spokenLanguageDtoList?.add(SpokenLanguageDto.fromJson(v));
      });
    }
    status = json['status'];
    tagline = json['tagline'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    if (belongsToCollectionDto != null) {
      map['belongs_to_collection'] = belongsToCollectionDto?.toJson();
    }
    map['budget'] = budget;
    if (genreDtoList != null) {
      map['genres'] = genreDtoList?.map((v) => v.toJson()).toList();
    }
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['origin_country'] = originCountry;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    if (productionCompanyDtoList != null) {
      map['production_companies'] =
          productionCompanyDtoList?.map((v) => v.toJson()).toList();
    }
    if (productionCountryDtoList != null) {
      map['production_countries'] =
          productionCountryDtoList?.map((v) => v.toJson()).toList();
    }
    map['release_date'] = releaseDate;
    map['revenue'] = revenue;
    map['runtime'] = runtime;
    if (spokenLanguageDtoList != null) {
      map['spoken_languages'] =
          spokenLanguageDtoList?.map((v) => v.toJson()).toList();
    }
    map['status'] = status;
    map['tagline'] = tagline;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
}

class SpokenLanguageDto {
  SpokenLanguageDto({
    this.englishName,
    this.iso6391,
    this.name,
  });

  SpokenLanguageDto.fromJson(dynamic json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }

  String? englishName;
  String? iso6391;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['english_name'] = englishName;
    map['iso_639_1'] = iso6391;
    map['name'] = name;
    return map;
  }
}

class ProductionCountryDto {
  ProductionCountryDto({
    this.iso31661,
    this.name,
  });

  ProductionCountryDto.fromJson(dynamic json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  String? iso31661;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = iso31661;
    map['name'] = name;
    return map;
  }
}

class ProductionCompanyDto {
  ProductionCompanyDto({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  ProductionCompanyDto.fromJson(dynamic json) {
    id = json['id'];
    logoPath = json['logo_path'];
    name = json['name'];
    originCountry = json['origin_country'];
  }

  num? id;
  String? logoPath;
  String? name;
  String? originCountry;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['logo_path'] = logoPath;
    map['name'] = name;
    map['origin_country'] = originCountry;
    return map;
  }
}

class GenreDto {
  GenreDto({
    this.id,
    this.name,
  });

  GenreDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  num? id;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}

class BelongsToCollectionDto {
  BelongsToCollectionDto({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  BelongsToCollectionDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
  }

  num? id;
  String? name;
  String? posterPath;
  String? backdropPath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['poster_path'] = posterPath;
    map['backdrop_path'] = backdropPath;
    return map;
  }
}
