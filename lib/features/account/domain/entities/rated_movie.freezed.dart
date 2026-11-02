// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rated_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RatedMovie {

 Movie get movie; double get rating;
/// Create a copy of RatedMovie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatedMovieCopyWith<RatedMovie> get copyWith => _$RatedMovieCopyWithImpl<RatedMovie>(this as RatedMovie, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RatedMovie;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatedMovie&&(identical(other.movie, _this.movie) || other.movie == _this.movie)&&(identical(other.rating, _this.rating) || other.rating == _this.rating));
}


@override
int get hashCode {
  final _this = this as RatedMovie;
  return Object.hash(runtimeType,_this.movie,_this.rating);
}

@override
String toString() {
  final _this = this as RatedMovie;
  return 'RatedMovie(movie: ${_this.movie}, rating: ${_this.rating})';
}


}

/// @nodoc
abstract mixin class $RatedMovieCopyWith<$Res>  {
  factory $RatedMovieCopyWith(RatedMovie value, $Res Function(RatedMovie) _then) = _$RatedMovieCopyWithImpl;
@useResult
$Res call({
 Movie movie, double rating
});


$MovieCopyWith<$Res> get movie;

}
/// @nodoc
class _$RatedMovieCopyWithImpl<$Res>
    implements $RatedMovieCopyWith<$Res> {
  _$RatedMovieCopyWithImpl(this._self, this._then);

  final RatedMovie _self;
  final $Res Function(RatedMovie) _then;

/// Create a copy of RatedMovie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movie = null,Object? rating = null,}) {
  return _then(RatedMovie(
movie: null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as Movie,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of RatedMovie
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieCopyWith<$Res> get movie {
  
  return $MovieCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}


/// Adds pattern-matching-related methods to [RatedMovie].
extension RatedMoviePatterns on RatedMovie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RatedMovie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatedMovie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RatedMovie value)  $default,){
final _that = this;
switch (_that) {
case _RatedMovie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RatedMovie value)?  $default,){
final _that = this;
switch (_that) {
case _RatedMovie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Movie movie,  double rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatedMovie() when $default != null:
return $default(_that.movie,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Movie movie,  double rating)  $default,) {final _that = this;
switch (_that) {
case _RatedMovie():
return $default(_that.movie,_that.rating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Movie movie,  double rating)?  $default,) {final _that = this;
switch (_that) {
case _RatedMovie() when $default != null:
return $default(_that.movie,_that.rating);case _:
  return null;

}
}

}

/// @nodoc


class _RatedMovie extends RatedMovie {
  const _RatedMovie({required this.movie, required this.rating}): super._();
  

@override final  Movie movie;
@override final  double rating;

/// Create a copy of RatedMovie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatedMovieCopyWith<_RatedMovie> get copyWith => __$RatedMovieCopyWithImpl<_RatedMovie>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatedMovie&&(identical(other.movie, movie) || other.movie == movie)&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode {
    return Object.hash(runtimeType,movie,rating);
}

@override
String toString() {
    return 'RatedMovie(movie: $movie, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$RatedMovieCopyWith<$Res> implements $RatedMovieCopyWith<$Res> {
  factory _$RatedMovieCopyWith(_RatedMovie value, $Res Function(_RatedMovie) _then) = __$RatedMovieCopyWithImpl;
@override @useResult
$Res call({
 Movie movie, double rating
});


@override $MovieCopyWith<$Res> get movie;

}
/// @nodoc
class __$RatedMovieCopyWithImpl<$Res>
    implements _$RatedMovieCopyWith<$Res> {
  __$RatedMovieCopyWithImpl(this._self, this._then);

  final _RatedMovie _self;
  final $Res Function(_RatedMovie) _then;

/// Create a copy of RatedMovie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movie = null,Object? rating = null,}) {
  return _then(_RatedMovie(
movie: null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as Movie,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of RatedMovie
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieCopyWith<$Res> get movie {
  
  return $MovieCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}

// dart format on
