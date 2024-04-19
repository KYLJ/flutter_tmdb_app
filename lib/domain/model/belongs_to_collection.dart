import 'package:freezed_annotation/freezed_annotation.dart';

part 'belongs_to_collection.freezed.dart';
part 'belongs_to_collection.g.dart';

@freezed
class BelongsToCollection with _$BelongsToCollection {
  const factory BelongsToCollection({
    required num id,
    required String name,
    required String posterPath,
    required String backdropPath,
  }) = _BelongsToCollection;

  factory BelongsToCollection.fromJson(Map<String, Object?> json) =>
      _$BelongsToCollectionFromJson(json);
}
