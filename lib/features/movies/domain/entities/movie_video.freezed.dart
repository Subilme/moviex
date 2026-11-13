// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieVideo {

 String get name; String get key; VideoSite get site; int get size; VideoType get type; bool get official; DateTime get publishedAt; String get id;
/// Create a copy of MovieVideo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieVideoCopyWith<MovieVideo> get copyWith => _$MovieVideoCopyWithImpl<MovieVideo>(this as MovieVideo, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MovieVideo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieVideo&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.site, _this.site) || other.site == _this.site)&&(identical(other.size, _this.size) || other.size == _this.size)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.official, _this.official) || other.official == _this.official)&&(identical(other.publishedAt, _this.publishedAt) || other.publishedAt == _this.publishedAt)&&(identical(other.id, _this.id) || other.id == _this.id));
}


@override
int get hashCode {
  final _this = this as MovieVideo;
  return Object.hash(runtimeType,_this.name,_this.key,_this.site,_this.size,_this.type,_this.official,_this.publishedAt,_this.id);
}

@override
String toString() {
  final _this = this as MovieVideo;
  return 'MovieVideo(name: ${_this.name}, key: ${_this.key}, site: ${_this.site}, size: ${_this.size}, type: ${_this.type}, official: ${_this.official}, publishedAt: ${_this.publishedAt}, id: ${_this.id})';
}


}

/// @nodoc
abstract mixin class $MovieVideoCopyWith<$Res>  {
  factory $MovieVideoCopyWith(MovieVideo value, $Res Function(MovieVideo) _then) = _$MovieVideoCopyWithImpl;
@useResult
$Res call({
 String name, String key, VideoSite site, int size, VideoType type, bool official, DateTime publishedAt, String id
});




}
/// @nodoc
class _$MovieVideoCopyWithImpl<$Res>
    implements $MovieVideoCopyWith<$Res> {
  _$MovieVideoCopyWithImpl(this._self, this._then);

  final MovieVideo _self;
  final $Res Function(MovieVideo) _then;

/// Create a copy of MovieVideo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? key = null,Object? site = null,Object? size = null,Object? type = null,Object? official = null,Object? publishedAt = null,Object? id = null,}) {
  return _then(MovieVideo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as VideoSite,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VideoType,official: null == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieVideo].
extension MovieVideoPatterns on MovieVideo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieVideo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieVideo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieVideo value)  $default,){
final _that = this;
switch (_that) {
case _MovieVideo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieVideo value)?  $default,){
final _that = this;
switch (_that) {
case _MovieVideo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String key,  VideoSite site,  int size,  VideoType type,  bool official,  DateTime publishedAt,  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieVideo() when $default != null:
return $default(_that.name,_that.key,_that.site,_that.size,_that.type,_that.official,_that.publishedAt,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String key,  VideoSite site,  int size,  VideoType type,  bool official,  DateTime publishedAt,  String id)  $default,) {final _that = this;
switch (_that) {
case _MovieVideo():
return $default(_that.name,_that.key,_that.site,_that.size,_that.type,_that.official,_that.publishedAt,_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String key,  VideoSite site,  int size,  VideoType type,  bool official,  DateTime publishedAt,  String id)?  $default,) {final _that = this;
switch (_that) {
case _MovieVideo() when $default != null:
return $default(_that.name,_that.key,_that.site,_that.size,_that.type,_that.official,_that.publishedAt,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _MovieVideo extends MovieVideo {
  const _MovieVideo({required this.name, required this.key, this.site = VideoSite.unknown, required this.size, this.type = VideoType.unknown, required this.official, required this.publishedAt, required this.id}): super._();
  

@override final  String name;
@override final  String key;
@override@JsonKey() final  VideoSite site;
@override final  int size;
@override@JsonKey() final  VideoType type;
@override final  bool official;
@override final  DateTime publishedAt;
@override final  String id;

/// Create a copy of MovieVideo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieVideoCopyWith<_MovieVideo> get copyWith => __$MovieVideoCopyWithImpl<_MovieVideo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieVideo&&(identical(other.name, name) || other.name == name)&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.type, type) || other.type == type)&&(identical(other.official, official) || other.official == official)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,key,site,size,type,official,publishedAt,id);
}

@override
String toString() {
    return 'MovieVideo(name: $name, key: $key, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$MovieVideoCopyWith<$Res> implements $MovieVideoCopyWith<$Res> {
  factory _$MovieVideoCopyWith(_MovieVideo value, $Res Function(_MovieVideo) _then) = __$MovieVideoCopyWithImpl;
@override @useResult
$Res call({
 String name, String key, VideoSite site, int size, VideoType type, bool official, DateTime publishedAt, String id
});




}
/// @nodoc
class __$MovieVideoCopyWithImpl<$Res>
    implements _$MovieVideoCopyWith<$Res> {
  __$MovieVideoCopyWithImpl(this._self, this._then);

  final _MovieVideo _self;
  final $Res Function(_MovieVideo) _then;

/// Create a copy of MovieVideo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? key = null,Object? site = null,Object? size = null,Object? type = null,Object? official = null,Object? publishedAt = null,Object? id = null,}) {
  return _then(_MovieVideo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as VideoSite,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as VideoType,official: null == official ? _self.official : official // ignore: cast_nullable_to_non_nullable
as bool,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
