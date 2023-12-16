// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_cardf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdCardf _$IdCardfFromJson(Map<String, dynamic> json) {
  return _IdCardf.fromJson(json);
}

/// @nodoc
mixin _$IdCardf {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdCardfCopyWith<IdCardf> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdCardfCopyWith<$Res> {
  factory $IdCardfCopyWith(IdCardf value, $Res Function(IdCardf) then) =
      _$IdCardfCopyWithImpl<$Res, IdCardf>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$IdCardfCopyWithImpl<$Res, $Val extends IdCardf>
    implements $IdCardfCopyWith<$Res> {
  _$IdCardfCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdCardfCopyWith<$Res> implements $IdCardfCopyWith<$Res> {
  factory _$$_IdCardfCopyWith(
          _$_IdCardf value, $Res Function(_$_IdCardf) then) =
      __$$_IdCardfCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$_IdCardfCopyWithImpl<$Res>
    extends _$IdCardfCopyWithImpl<$Res, _$_IdCardf>
    implements _$$_IdCardfCopyWith<$Res> {
  __$$_IdCardfCopyWithImpl(_$_IdCardf _value, $Res Function(_$_IdCardf) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_IdCardf(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdCardf implements _IdCardf {
  const _$_IdCardf({this.id, this.title});

  factory _$_IdCardf.fromJson(Map<String, dynamic> json) =>
      _$$_IdCardfFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'IdCardf(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdCardf &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdCardfCopyWith<_$_IdCardf> get copyWith =>
      __$$_IdCardfCopyWithImpl<_$_IdCardf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdCardfToJson(
      this,
    );
  }
}

abstract class _IdCardf implements IdCardf {
  const factory _IdCardf({final String? id, final String? title}) = _$_IdCardf;

  factory _IdCardf.fromJson(Map<String, dynamic> json) = _$_IdCardf.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_IdCardfCopyWith<_$_IdCardf> get copyWith =>
      throw _privateConstructorUsedError;
}
