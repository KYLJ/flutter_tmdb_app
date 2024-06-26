import 'package:flutter_tmdb_app/data/dto/movie_credit_dto.dart';
import 'package:flutter_tmdb_app/data/mapper/cast_dto_mapper.dart';
import 'package:flutter_tmdb_app/data/mapper/crew_dto_mapper.dart';
import 'package:flutter_tmdb_app/domain/model/movie_credit.dart';

extension MovieCreditDtoMapper on MovieCreditDto {
  MovieCredit toMovieCredit() {
    return MovieCredit(
      id: id ?? 0,
      castList: castDtoList?.map((e) => e.toCast()).toList() ?? [],
      crewList: crewDtoList?.map((e) => e.toCrew()).toList() ?? [],
    );
  }
}
