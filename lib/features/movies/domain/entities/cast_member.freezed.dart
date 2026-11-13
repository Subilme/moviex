// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CastMember {

 bool get adult; Gender get gender; String get department; int get id; String get name; String get originalName; double get popularity; String? get profilePath; int get castId; String get character; String get creditId; int get order;
/// Create a copy of CastMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastMemberCopyWith<CastMember> get copyWith => _$CastMemberCopyWithImpl<CastMember>(this as CastMember, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CastMember;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CastMember&&(identical(other.adult, _this.adult) || other.adult == _this.adult)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.popularity, _this.popularity) || other.popularity == _this.popularity)&&(identical(other.profilePath, _this.profilePath) || other.profilePath == _this.profilePath)&&(identical(other.castId, _this.castId) || other.castId == _this.castId)&&(identical(other.character, _this.character) || other.character == _this.character)&&(identical(other.creditId, _this.creditId) || other.creditId == _this.creditId)&&(identical(other.order, _this.order) || other.order == _this.order));
}


@override
int get hashCode {
  final _this = this as CastMember;
  return Object.hash(runtimeType,_this.adult,_this.gender,_this.department,_this.id,_this.name,_this.originalName,_this.popularity,_this.profilePath,_this.castId,_this.character,_this.creditId,_this.order);
}

@override
String toString() {
  final _this = this as CastMember;
  return 'CastMember(adult: ${_this.adult}, gender: ${_this.gender}, department: ${_this.department}, id: ${_this.id}, name: ${_this.name}, originalName: ${_this.originalName}, popularity: ${_this.popularity}, profilePath: ${_this.profilePath}, castId: ${_this.castId}, character: ${_this.character}, creditId: ${_this.creditId}, order: ${_this.order})';
}


}

/// @nodoc
abstract mixin class $CastMemberCopyWith<$Res>  {
  factory $CastMemberCopyWith(CastMember value, $Res Function(CastMember) _then) = _$CastMemberCopyWithImpl;
@useResult
$Res call({
 bool adult, Gender gender, String department, int id, String name, String originalName, double popularity, String? profilePath, int castId, String character, String creditId, int order
});




}
/// @nodoc
class _$CastMemberCopyWithImpl<$Res>
    implements $CastMemberCopyWith<$Res> {
  _$CastMemberCopyWithImpl(this._self, this._then);

  final CastMember _self;
  final $Res Function(CastMember) _then;

/// Create a copy of CastMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? gender = null,Object? department = null,Object? id = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? castId = null,Object? character = null,Object? creditId = null,Object? order = null,}) {
  return _then(CastMember(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,castId: null == castId ? _self.castId : castId // ignore: cast_nullable_to_non_nullable
as int,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CastMember].
extension CastMemberPatterns on CastMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CastMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CastMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CastMember value)  $default,){
final _that = this;
switch (_that) {
case _CastMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CastMember value)?  $default,){
final _that = this;
switch (_that) {
case _CastMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult,  Gender gender,  String department,  int id,  String name,  String originalName,  double popularity,  String? profilePath,  int castId,  String character,  String creditId,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CastMember() when $default != null:
return $default(_that.adult,_that.gender,_that.department,_that.id,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult,  Gender gender,  String department,  int id,  String name,  String originalName,  double popularity,  String? profilePath,  int castId,  String character,  String creditId,  int order)  $default,) {final _that = this;
switch (_that) {
case _CastMember():
return $default(_that.adult,_that.gender,_that.department,_that.id,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult,  Gender gender,  String department,  int id,  String name,  String originalName,  double popularity,  String? profilePath,  int castId,  String character,  String creditId,  int order)?  $default,) {final _that = this;
switch (_that) {
case _CastMember() when $default != null:
return $default(_that.adult,_that.gender,_that.department,_that.id,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _CastMember extends CastMember {
  const _CastMember({this.adult = true, this.gender = Gender.unknown, required this.department, required this.id, required this.name, required this.originalName, this.popularity = 0.0, this.profilePath, required this.castId, required this.character, required this.creditId, this.order = 0}): super._();
  

@override@JsonKey() final  bool adult;
@override@JsonKey() final  Gender gender;
@override final  String department;
@override final  int id;
@override final  String name;
@override final  String originalName;
@override@JsonKey() final  double popularity;
@override final  String? profilePath;
@override final  int castId;
@override final  String character;
@override final  String creditId;
@override@JsonKey() final  int order;

/// Create a copy of CastMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CastMemberCopyWith<_CastMember> get copyWith => __$CastMemberCopyWithImpl<_CastMember>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CastMember&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.department, department) || other.department == department)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.castId, castId) || other.castId == castId)&&(identical(other.character, character) || other.character == character)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode {
    return Object.hash(runtimeType,adult,gender,department,id,name,originalName,popularity,profilePath,castId,character,creditId,order);
}

@override
String toString() {
    return 'CastMember(adult: $adult, gender: $gender, department: $department, id: $id, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order)';
}


}

/// @nodoc
abstract mixin class _$CastMemberCopyWith<$Res> implements $CastMemberCopyWith<$Res> {
  factory _$CastMemberCopyWith(_CastMember value, $Res Function(_CastMember) _then) = __$CastMemberCopyWithImpl;
@override @useResult
$Res call({
 bool adult, Gender gender, String department, int id, String name, String originalName, double popularity, String? profilePath, int castId, String character, String creditId, int order
});




}
/// @nodoc
class __$CastMemberCopyWithImpl<$Res>
    implements _$CastMemberCopyWith<$Res> {
  __$CastMemberCopyWithImpl(this._self, this._then);

  final _CastMember _self;
  final $Res Function(_CastMember) _then;

/// Create a copy of CastMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? gender = null,Object? department = null,Object? id = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? castId = null,Object? character = null,Object? creditId = null,Object? order = null,}) {
  return _then(_CastMember(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,castId: null == castId ? _self.castId : castId // ignore: cast_nullable_to_non_nullable
as int,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
