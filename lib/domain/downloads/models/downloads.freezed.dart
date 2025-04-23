// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Downloads {

@JsonKey(name: 'poster_path') String? get posterpath;
/// Create a copy of Downloads
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsCopyWith<Downloads> get copyWith => _$DownloadsCopyWithImpl<Downloads>(this as Downloads, _$identity);

  /// Serializes this Downloads to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Downloads&&(identical(other.posterpath, posterpath) || other.posterpath == posterpath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterpath);

@override
String toString() {
  return 'Downloads(posterpath: $posterpath)';
}


}

/// @nodoc
abstract mixin class $DownloadsCopyWith<$Res>  {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) _then) = _$DownloadsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'poster_path') String? posterpath
});




}
/// @nodoc
class _$DownloadsCopyWithImpl<$Res>
    implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._self, this._then);

  final Downloads _self;
  final $Res Function(Downloads) _then;

/// Create a copy of Downloads
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posterpath = freezed,}) {
  return _then(_self.copyWith(
posterpath: freezed == posterpath ? _self.posterpath : posterpath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Downloads implements Downloads {
  const _Downloads({@JsonKey(name: 'poster_path') required this.posterpath});
  factory _Downloads.fromJson(Map<String, dynamic> json) => _$DownloadsFromJson(json);

@override@JsonKey(name: 'poster_path') final  String? posterpath;

/// Create a copy of Downloads
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadsCopyWith<_Downloads> get copyWith => __$DownloadsCopyWithImpl<_Downloads>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DownloadsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Downloads&&(identical(other.posterpath, posterpath) || other.posterpath == posterpath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,posterpath);

@override
String toString() {
  return 'Downloads(posterpath: $posterpath)';
}


}

/// @nodoc
abstract mixin class _$DownloadsCopyWith<$Res> implements $DownloadsCopyWith<$Res> {
  factory _$DownloadsCopyWith(_Downloads value, $Res Function(_Downloads) _then) = __$DownloadsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'poster_path') String? posterpath
});




}
/// @nodoc
class __$DownloadsCopyWithImpl<$Res>
    implements _$DownloadsCopyWith<$Res> {
  __$DownloadsCopyWithImpl(this._self, this._then);

  final _Downloads _self;
  final $Res Function(_Downloads) _then;

/// Create a copy of Downloads
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posterpath = freezed,}) {
  return _then(_Downloads(
posterpath: freezed == posterpath ? _self.posterpath : posterpath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
