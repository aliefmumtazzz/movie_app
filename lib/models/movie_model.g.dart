// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
    };
