// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoviePage {

 List<Movie> get movies; int get page; int get totalPages; int get totalResults;
/// Create a copy of MoviePage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoviePageCopyWith<MoviePage> get copyWith => _$MoviePageCopyWithImpl<MoviePage>(this as MoviePage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MoviePage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoviePage&&const DeepCollectionEquality().equals(other.movies, _this.movies)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.totalPages, _this.totalPages) || other.totalPages == _this.totalPages)&&(identical(other.totalResults, _this.totalResults) || other.totalResults == _this.totalResults));
}


@override
int get hashCode {
  final _this = this as MoviePage;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.movies),_this.page,_this.totalPages,_this.totalResults);
}

@override
String toString() {
  final _this = this as MoviePage;
  return 'MoviePage(movies: ${_this.movies}, page: ${_this.page}, totalPages: ${_this.totalPages}, totalResults: ${_this.totalResults})';
}


}

/// @nodoc
abstract mixin class $MoviePageCopyWith<$Res>  {
  factory $MoviePageCopyWith(MoviePage value, $Res Function(MoviePage) _then) = _$MoviePageCopyWithImpl;
@useResult
$Res call({
 List<Movie> movies, int page, int totalPages, int totalResults
});




}
/// @nodoc
class _$MoviePageCopyWithImpl<$Res>
    implements $MoviePageCopyWith<$Res> {
  _$MoviePageCopyWithImpl(this._self, this._then);

  final MoviePage _self;
  final $Res Function(MoviePage) _then;

/// Create a copy of MoviePage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movies = null,Object? page = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(MoviePage(
movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MoviePage].
extension MoviePagePatterns on MoviePage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoviePage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoviePage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoviePage value)  $default,){
final _that = this;
switch (_that) {
case _MoviePage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoviePage value)?  $default,){
final _that = this;
switch (_that) {
case _MoviePage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Movie> movies,  int page,  int totalPages,  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoviePage() when $default != null:
return $default(_that.movies,_that.page,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Movie> movies,  int page,  int totalPages,  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _MoviePage():
return $default(_that.movies,_that.page,_that.totalPages,_that.totalResults);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Movie> movies,  int page,  int totalPages,  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _MoviePage() when $default != null:
return $default(_that.movies,_that.page,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc


class _MoviePage extends MoviePage {
  const _MoviePage({required  List<Movie> movies, required this.page, required this.totalPages, required this.totalResults}): _movies = movies,super._();
  

 final  List<Movie> _movies;
@override List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override final  int page;
@override final  int totalPages;
@override final  int totalResults;

/// Create a copy of MoviePage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoviePageCopyWith<_MoviePage> get copyWith => __$MoviePageCopyWithImpl<_MoviePage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoviePage&&const DeepCollectionEquality().equals(other.movies, _movies)&&(identical(other.page, page) || other.page == page)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),page,totalPages,totalResults);
}

@override
String toString() {
    return 'MoviePage(movies: $movies, page: $page, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$MoviePageCopyWith<$Res> implements $MoviePageCopyWith<$Res> {
  factory _$MoviePageCopyWith(_MoviePage value, $Res Function(_MoviePage) _then) = __$MoviePageCopyWithImpl;
@override @useResult
$Res call({
 List<Movie> movies, int page, int totalPages, int totalResults
});




}
/// @nodoc
class __$MoviePageCopyWithImpl<$Res>
    implements _$MoviePageCopyWith<$Res> {
  __$MoviePageCopyWithImpl(this._self, this._then);

  final _MoviePage _self;
  final $Res Function(_MoviePage) _then;

/// Create a copy of MoviePage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? page = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_MoviePage(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
