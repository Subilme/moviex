// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Movie {

 bool get adult; String? get backdropPath; List<int> get genreIds; int get budget; List<Genre> get genres; int get id; String get originalLanguage; String get originalTitle; String? get overview; double get popularity; String? get posterPath; String? get releaseDate; int get revenue; int get runtime; String get title; bool get video; double get voteAverage; int get voteCount; List<MovieVideo> get videos; List<CastMember> get cast; List<CrewMember> get crew;
/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCopyWith<Movie> get copyWith => _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Movie;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Movie&&(identical(other.adult, _this.adult) || other.adult == _this.adult)&&(identical(other.backdropPath, _this.backdropPath) || other.backdropPath == _this.backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, _this.genreIds)&&(identical(other.budget, _this.budget) || other.budget == _this.budget)&&const DeepCollectionEquality().equals(other.genres, _this.genres)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.originalLanguage, _this.originalLanguage) || other.originalLanguage == _this.originalLanguage)&&(identical(other.originalTitle, _this.originalTitle) || other.originalTitle == _this.originalTitle)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.popularity, _this.popularity) || other.popularity == _this.popularity)&&(identical(other.posterPath, _this.posterPath) || other.posterPath == _this.posterPath)&&(identical(other.releaseDate, _this.releaseDate) || other.releaseDate == _this.releaseDate)&&(identical(other.revenue, _this.revenue) || other.revenue == _this.revenue)&&(identical(other.runtime, _this.runtime) || other.runtime == _this.runtime)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.video, _this.video) || other.video == _this.video)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage)&&(identical(other.voteCount, _this.voteCount) || other.voteCount == _this.voteCount)&&const DeepCollectionEquality().equals(other.videos, _this.videos)&&const DeepCollectionEquality().equals(other.cast, _this.cast)&&const DeepCollectionEquality().equals(other.crew, _this.crew));
}


@override
int get hashCode {
  final _this = this as Movie;
  return Object.hashAll([runtimeType,_this.adult,_this.backdropPath,const DeepCollectionEquality().hash(_this.genreIds),_this.budget,const DeepCollectionEquality().hash(_this.genres),_this.id,_this.originalLanguage,_this.originalTitle,_this.overview,_this.popularity,_this.posterPath,_this.releaseDate,_this.revenue,_this.runtime,_this.title,_this.video,_this.voteAverage,_this.voteCount,const DeepCollectionEquality().hash(_this.videos),const DeepCollectionEquality().hash(_this.cast),const DeepCollectionEquality().hash(_this.crew)]);
}

@override
String toString() {
  final _this = this as Movie;
  return 'Movie(adult: ${_this.adult}, backdropPath: ${_this.backdropPath}, genreIds: ${_this.genreIds}, budget: ${_this.budget}, genres: ${_this.genres}, id: ${_this.id}, originalLanguage: ${_this.originalLanguage}, originalTitle: ${_this.originalTitle}, overview: ${_this.overview}, popularity: ${_this.popularity}, posterPath: ${_this.posterPath}, releaseDate: ${_this.releaseDate}, revenue: ${_this.revenue}, runtime: ${_this.runtime}, title: ${_this.title}, video: ${_this.video}, voteAverage: ${_this.voteAverage}, voteCount: ${_this.voteCount}, videos: ${_this.videos}, cast: ${_this.cast}, crew: ${_this.crew})';
}


}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res>  {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) = _$MovieCopyWithImpl;
@useResult
$Res call({
 bool adult, String? backdropPath, List<int> genreIds, int budget, List<Genre> genres, int id, String originalLanguage, String originalTitle, String? overview, double popularity, String? posterPath, String? releaseDate, int revenue, int runtime, String title, bool video, double voteAverage, int voteCount, List<MovieVideo> videos, List<CastMember> cast, List<CrewMember> crew
});




}
/// @nodoc
class _$MovieCopyWithImpl<$Res>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = freezed,Object? genreIds = null,Object? budget = null,Object? genres = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = freezed,Object? popularity = null,Object? posterPath = freezed,Object? releaseDate = freezed,Object? revenue = null,Object? runtime = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,Object? videos = null,Object? cast = null,Object? crew = null,}) {
  return _then(Movie(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<MovieVideo>,cast: null == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<CastMember>,crew: null == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<CrewMember>,
  ));
}

}


/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Movie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Movie value)  $default,){
final _that = this;
switch (_that) {
case _Movie():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Movie value)?  $default,){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult,  String? backdropPath,  List<int> genreIds,  int budget,  List<Genre> genres,  int id,  String originalLanguage,  String originalTitle,  String? overview,  double popularity,  String? posterPath,  String? releaseDate,  int revenue,  int runtime,  String title,  bool video,  double voteAverage,  int voteCount,  List<MovieVideo> videos,  List<CastMember> cast,  List<CrewMember> crew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.budget,_that.genres,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.revenue,_that.runtime,_that.title,_that.video,_that.voteAverage,_that.voteCount,_that.videos,_that.cast,_that.crew);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult,  String? backdropPath,  List<int> genreIds,  int budget,  List<Genre> genres,  int id,  String originalLanguage,  String originalTitle,  String? overview,  double popularity,  String? posterPath,  String? releaseDate,  int revenue,  int runtime,  String title,  bool video,  double voteAverage,  int voteCount,  List<MovieVideo> videos,  List<CastMember> cast,  List<CrewMember> crew)  $default,) {final _that = this;
switch (_that) {
case _Movie():
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.budget,_that.genres,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.revenue,_that.runtime,_that.title,_that.video,_that.voteAverage,_that.voteCount,_that.videos,_that.cast,_that.crew);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult,  String? backdropPath,  List<int> genreIds,  int budget,  List<Genre> genres,  int id,  String originalLanguage,  String originalTitle,  String? overview,  double popularity,  String? posterPath,  String? releaseDate,  int revenue,  int runtime,  String title,  bool video,  double voteAverage,  int voteCount,  List<MovieVideo> videos,  List<CastMember> cast,  List<CrewMember> crew)?  $default,) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.budget,_that.genres,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.revenue,_that.runtime,_that.title,_that.video,_that.voteAverage,_that.voteCount,_that.videos,_that.cast,_that.crew);case _:
  return null;

}
}

}

/// @nodoc


class _Movie extends Movie {
  const _Movie({this.adult = true, this.backdropPath,  List<int> genreIds = const [], this.budget = 0,  List<Genre> genres = const [], required this.id, required this.originalLanguage, required this.originalTitle, this.overview, this.popularity = 0.0, this.posterPath, this.releaseDate, this.revenue = 0, this.runtime = 0, required this.title, this.video = true, this.voteAverage = 0.0, this.voteCount = 0,  List<MovieVideo> videos = const [],  List<CastMember> cast = const [],  List<CrewMember> crew = const []}): _genreIds = genreIds,_genres = genres,_videos = videos,_cast = cast,_crew = crew,super._();
  

@override@JsonKey() final  bool adult;
@override final  String? backdropPath;
 final  List<int> _genreIds;
@override@JsonKey() List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override@JsonKey() final  int budget;
 final  List<Genre> _genres;
@override@JsonKey() List<Genre> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override final  int id;
@override final  String originalLanguage;
@override final  String originalTitle;
@override final  String? overview;
@override@JsonKey() final  double popularity;
@override final  String? posterPath;
@override final  String? releaseDate;
@override@JsonKey() final  int revenue;
@override@JsonKey() final  int runtime;
@override final  String title;
@override@JsonKey() final  bool video;
@override@JsonKey() final  double voteAverage;
@override@JsonKey() final  int voteCount;
 final  List<MovieVideo> _videos;
@override@JsonKey() List<MovieVideo> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}

 final  List<CastMember> _cast;
@override@JsonKey() List<CastMember> get cast {
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cast);
}

 final  List<CrewMember> _crew;
@override@JsonKey() List<CrewMember> get crew {
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crew);
}


/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCopyWith<_Movie> get copyWith => __$MovieCopyWithImpl<_Movie>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Movie&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, _genreIds)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other.genres, _genres)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&const DeepCollectionEquality().equals(other.videos, _videos)&&const DeepCollectionEquality().equals(other.cast, _cast)&&const DeepCollectionEquality().equals(other.crew, _crew));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreIds),budget,const DeepCollectionEquality().hash(_genres),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,revenue,runtime,title,video,voteAverage,voteCount,const DeepCollectionEquality().hash(_videos),const DeepCollectionEquality().hash(_cast),const DeepCollectionEquality().hash(_crew)]);
}

@override
String toString() {
    return 'Movie(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, budget: $budget, genres: $genres, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, videos: $videos, cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) = __$MovieCopyWithImpl;
@override @useResult
$Res call({
 bool adult, String? backdropPath, List<int> genreIds, int budget, List<Genre> genres, int id, String originalLanguage, String originalTitle, String? overview, double popularity, String? posterPath, String? releaseDate, int revenue, int runtime, String title, bool video, double voteAverage, int voteCount, List<MovieVideo> videos, List<CastMember> cast, List<CrewMember> crew
});




}
/// @nodoc
class __$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = freezed,Object? genreIds = null,Object? budget = null,Object? genres = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = freezed,Object? popularity = null,Object? posterPath = freezed,Object? releaseDate = freezed,Object? revenue = null,Object? runtime = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,Object? videos = null,Object? cast = null,Object? crew = null,}) {
  return _then(_Movie(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<MovieVideo>,cast: null == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<CastMember>,crew: null == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<CrewMember>,
  ));
}


}

// dart format on
