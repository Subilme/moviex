// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crew_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CrewMember {

 bool get adult; Gender get gender; int get id; String get name; String get originalName; double get popularity; String? get profilePath; String get creditId; String get department; List<String> get jobs;
/// Create a copy of CrewMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrewMemberCopyWith<CrewMember> get copyWith => _$CrewMemberCopyWithImpl<CrewMember>(this as CrewMember, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CrewMember;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrewMember&&(identical(other.adult, _this.adult) || other.adult == _this.adult)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.popularity, _this.popularity) || other.popularity == _this.popularity)&&(identical(other.profilePath, _this.profilePath) || other.profilePath == _this.profilePath)&&(identical(other.creditId, _this.creditId) || other.creditId == _this.creditId)&&(identical(other.department, _this.department) || other.department == _this.department)&&const DeepCollectionEquality().equals(other.jobs, _this.jobs));
}


@override
int get hashCode {
  final _this = this as CrewMember;
  return Object.hash(runtimeType,_this.adult,_this.gender,_this.id,_this.name,_this.originalName,_this.popularity,_this.profilePath,_this.creditId,_this.department,const DeepCollectionEquality().hash(_this.jobs));
}

@override
String toString() {
  final _this = this as CrewMember;
  return 'CrewMember(adult: ${_this.adult}, gender: ${_this.gender}, id: ${_this.id}, name: ${_this.name}, originalName: ${_this.originalName}, popularity: ${_this.popularity}, profilePath: ${_this.profilePath}, creditId: ${_this.creditId}, department: ${_this.department}, jobs: ${_this.jobs})';
}


}

/// @nodoc
abstract mixin class $CrewMemberCopyWith<$Res>  {
  factory $CrewMemberCopyWith(CrewMember value, $Res Function(CrewMember) _then) = _$CrewMemberCopyWithImpl;
@useResult
$Res call({
 bool adult, Gender gender, int id, String name, String originalName, double popularity, String? profilePath, String creditId, String department, List<String> jobs
});




}
/// @nodoc
class _$CrewMemberCopyWithImpl<$Res>
    implements $CrewMemberCopyWith<$Res> {
  _$CrewMemberCopyWithImpl(this._self, this._then);

  final CrewMember _self;
  final $Res Function(CrewMember) _then;

/// Create a copy of CrewMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? gender = null,Object? id = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? creditId = null,Object? department = null,Object? jobs = null,}) {
  return _then(CrewMember(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CrewMember].
extension CrewMemberPatterns on CrewMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrewMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrewMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrewMember value)  $default,){
final _that = this;
switch (_that) {
case _CrewMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrewMember value)?  $default,){
final _that = this;
switch (_that) {
case _CrewMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult,  Gender gender,  int id,  String name,  String originalName,  double popularity,  String? profilePath,  String creditId,  String department,  List<String> jobs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrewMember() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.jobs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult,  Gender gender,  int id,  String name,  String originalName,  double popularity,  String? profilePath,  String creditId,  String department,  List<String> jobs)  $default,) {final _that = this;
switch (_that) {
case _CrewMember():
return $default(_that.adult,_that.gender,_that.id,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.jobs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult,  Gender gender,  int id,  String name,  String originalName,  double popularity,  String? profilePath,  String creditId,  String department,  List<String> jobs)?  $default,) {final _that = this;
switch (_that) {
case _CrewMember() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.jobs);case _:
  return null;

}
}

}

/// @nodoc


class _CrewMember extends CrewMember {
  const _CrewMember({this.adult = true, this.gender = Gender.unknown, required this.id, required this.name, required this.originalName, this.popularity = 0.0, this.profilePath, required this.creditId, required this.department,  List<String> jobs = const []}): _jobs = jobs,super._();
  

@override@JsonKey() final  bool adult;
@override@JsonKey() final  Gender gender;
@override final  int id;
@override final  String name;
@override final  String originalName;
@override@JsonKey() final  double popularity;
@override final  String? profilePath;
@override final  String creditId;
@override final  String department;
 final  List<String> _jobs;
@override@JsonKey() List<String> get jobs {
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobs);
}


/// Create a copy of CrewMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrewMemberCopyWith<_CrewMember> get copyWith => __$CrewMemberCopyWithImpl<_CrewMember>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrewMember&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.department, department) || other.department == department)&&const DeepCollectionEquality().equals(other.jobs, _jobs));
}


@override
int get hashCode {
    return Object.hash(runtimeType,adult,gender,id,name,originalName,popularity,profilePath,creditId,department,const DeepCollectionEquality().hash(_jobs));
}

@override
String toString() {
    return 'CrewMember(adult: $adult, gender: $gender, id: $id, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, creditId: $creditId, department: $department, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class _$CrewMemberCopyWith<$Res> implements $CrewMemberCopyWith<$Res> {
  factory _$CrewMemberCopyWith(_CrewMember value, $Res Function(_CrewMember) _then) = __$CrewMemberCopyWithImpl;
@override @useResult
$Res call({
 bool adult, Gender gender, int id, String name, String originalName, double popularity, String? profilePath, String creditId, String department, List<String> jobs
});




}
/// @nodoc
class __$CrewMemberCopyWithImpl<$Res>
    implements _$CrewMemberCopyWith<$Res> {
  __$CrewMemberCopyWithImpl(this._self, this._then);

  final _CrewMember _self;
  final $Res Function(_CrewMember) _then;

/// Create a copy of CrewMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? gender = null,Object? id = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? creditId = null,Object? department = null,Object? jobs = null,}) {
  return _then(_CrewMember(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
