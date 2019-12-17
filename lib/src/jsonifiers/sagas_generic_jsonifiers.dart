import 'package:sagas_meta/src/models/sagas_generic.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class SagasGenericJsonifier{
  static SaMovie extractSaMovie(dynamic json) {
    return SaMovie(
        entityId: create_id_from('SaMovie', ['movieId'], json),
        overview: json['overview'] as String,
        voteAverage: json['voteAverage'] as double,
        releaseDate: check_dt(json['releaseDate']),
        movieId: json['movieId'] as String,
        video: json['video'] as String,
        title: json['title'] as String,
        originalLanguage: json['originalLanguage'] as String,
        originalTitle: json['originalTitle'] as String,
        popularity: json['popularity'] as double,
        voteCount: json['voteCount'] as int,
        backdropPath: json['backdropPath'] as String,
        posterPath: json['posterPath'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SaMovie overridesSaMovie(Map<String, dynamic> map) {
    return SaMovie(
        entityId: create_id_from('SaMovie', ['movieId'], map),
        overview: map['overview'],
        voteAverage: map['voteAverage'],
        releaseDate: map['releaseDate'],
        movieId: map['movieId'],
        video: map['video'],
        title: map['title'],
        originalLanguage: map['originalLanguage'],
        originalTitle: map['originalTitle'],
        popularity: map['popularity'],
        voteCount: map['voteCount'],
        backdropPath: map['backdropPath'],
        posterPath: map['posterPath'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SaMovieGenres extractSaMovieGenres(dynamic json) {
    return SaMovieGenres(
        entityId: create_id_from('SaMovieGenres', ['movieGenresId'], json),
        movieGenresName: json['movieGenresName'] as String,
        movieGenresId: json['movieGenresId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SaMovieGenres overridesSaMovieGenres(Map<String, dynamic> map) {
    return SaMovieGenres(
        entityId: create_id_from('SaMovieGenres', ['movieGenresId'], map),
        movieGenresName: map['movieGenresName'],
        movieGenresId: map['movieGenresId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SaMovieGenresAppl extractSaMovieGenresAppl(dynamic json) {
    return SaMovieGenresAppl(
        entityId: create_id_from('SaMovieGenresAppl', ['movieId', 'movieGenresId'], json),
        movieGenresId: json['movieGenresId'] as String,
        movieId: json['movieId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SaMovieGenresAppl overridesSaMovieGenresAppl(Map<String, dynamic> map) {
    return SaMovieGenresAppl(
        entityId: create_id_from('SaMovieGenresAppl', ['movieId', 'movieGenresId'], map),
        movieGenresId: map['movieGenresId'],
        movieId: map['movieId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SagasType extractSagasType(dynamic json) {
    return SagasType(
        entityId: create_id_from('SagasType', ['sagasTypeId'], json),
        description: json['description'] as String,
        sagasTypeId: json['sagasTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SagasType overridesSagasType(Map<String, dynamic> map) {
    return SagasType(
        entityId: create_id_from('SagasType', ['sagasTypeId'], map),
        description: map['description'],
        sagasTypeId: map['sagasTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}