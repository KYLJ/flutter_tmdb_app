class MovieCreditDto {
  num? id;
  List<CastDto>? castDtoList;
  List<CrewDto>? crewDtoList;

  MovieCreditDto({
    this.id,
    this.castDtoList,
    this.crewDtoList,
  });

  MovieCreditDto.fromJson(dynamic json) {
    id = json['id'];
    if (json['cast'] != null) {
      castDtoList = [];
      json['cast'].forEach((v) {
        castDtoList?.add(CastDto.fromJson(v));
      });
    }
    if (json['crew'] != null) {
      crewDtoList = [];
      json['crew'].forEach((v) {
        crewDtoList?.add(CrewDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (castDtoList != null) {
      map['cast'] = castDtoList?.map((v) => v.toJson()).toList();
    }
    if (crewDtoList != null) {
      map['crew'] = crewDtoList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class CrewDto {
  bool? adult;
  num? gender;
  num? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  num? popularity;
  String? profilePath;
  String? creditId;
  String? department;
  String? job;

  CrewDto({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.creditId,
    this.department,
    this.job,
  });

  CrewDto.fromJson(dynamic json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    originalName = json['original_name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
    creditId = json['credit_id'];
    department = json['department'];
    job = json['job'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['gender'] = gender;
    map['id'] = id;
    map['known_for_department'] = knownForDepartment;
    map['name'] = name;
    map['original_name'] = originalName;
    map['popularity'] = popularity;
    map['profile_path'] = profilePath;
    map['credit_id'] = creditId;
    map['department'] = department;
    map['job'] = job;
    return map;
  }
}

class CastDto {
  bool? adult;
  num? gender;
  num? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  num? popularity;
  String? profilePath;
  num? castId;
  String? character;
  String? creditId;
  num? order;

  CastDto({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
  });

  CastDto.fromJson(dynamic json) {
    adult = json['adult'];
    gender = json['gender'];
    id = json['id'];
    knownForDepartment = json['known_for_department'];
    name = json['name'];
    originalName = json['original_name'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
    castId = json['cast_id'];
    character = json['character'];
    creditId = json['credit_id'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['gender'] = gender;
    map['id'] = id;
    map['known_for_department'] = knownForDepartment;
    map['name'] = name;
    map['original_name'] = originalName;
    map['popularity'] = popularity;
    map['profile_path'] = profilePath;
    map['cast_id'] = castId;
    map['character'] = character;
    map['credit_id'] = creditId;
    map['order'] = order;
    return map;
  }
}
