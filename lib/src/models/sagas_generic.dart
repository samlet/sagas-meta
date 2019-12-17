import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity SaMovie, Movie Entity
class SaMovie extends EntityBase {

  /// this entity has only one pk
  final String overview;
  final double voteAverage;
  final DateTime releaseDate;
  final String movieId; // pk
  final String video;
  final String title;
  final String originalLanguage;
  final String originalTitle;
  final double popularity;
  final int voteCount;
  final String backdropPath;
  final String posterPath;
  SaMovie({entityId,
    this.overview, this.voteAverage, this.releaseDate, @required this.movieId, this.video, this.title, this.originalLanguage, this.originalTitle, this.popularity, this.voteCount, this.backdropPath, this.posterPath,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SaMovie { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'overview':overview, 'voteAverage':voteAverage, 'releaseDate':releaseDate, 'movieId':movieId, 'video':video, 'title':title, 'originalLanguage':originalLanguage, 'originalTitle':originalTitle, 'popularity':popularity, 'voteCount':voteCount, 'backdropPath':backdropPath, 'posterPath':posterPath};
  }

}

/// Entity SaMovieGenres, Movie Genres
class SaMovieGenres extends EntityBase {

  /// this entity has only one pk
  final String movieGenresName;
  final String movieGenresId; // pk
  SaMovieGenres({entityId,
    this.movieGenresName, @required this.movieGenresId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SaMovieGenres { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'movieGenresName':movieGenresName, 'movieGenresId':movieGenresId};
  }

}

/// Entity SaMovieGenresAppl, SaMovieGenresAppl
class SaMovieGenresAppl extends EntityBase {

  final String movieGenresId; // pk
  final String movieId; // pk
  SaMovieGenresAppl({entityId,
    @required this.movieGenresId, @required this.movieId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SaMovieGenresAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'movieGenresId':movieGenresId, 'movieId':movieId};
  }

}

/// Entity SagasType, Sagas Type Entity
class SagasType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String sagasTypeId; // pk
  SagasType({entityId,
    this.description, @required this.sagasTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SagasType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'sagasTypeId':sagasTypeId};
  }

}