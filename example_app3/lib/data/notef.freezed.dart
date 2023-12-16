// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notef.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notef _$NotefFromJson(Map<String, dynamic> json) {
  return _Notef.fromJson(json);
}

/// @nodoc
mixin _$Notef {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get title2 => throw _privateConstructorUsedError;
  IdCardf? get idCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotefCopyWith<Notef> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotefCopyWith<$Res> {
  factory $NotefCopyWith(Notef value, $Res Function(Notef) then) =
      _$NotefCopyWithImpl<$Res, Notef>;
  @useResult
  $Res call({String? id, String? title, String? title2, IdCardf? idCard});

  $IdCardfCopyWith<$Res>? get idCard;
}

/// @nodoc
class _$NotefCopyWithImpl<$Res, $Val extends Notef>
    implements $NotefCopyWith<$Res> {
  _$NotefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? title2 = freezed,
    Object? idCard = freezed,
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
      title2: freezed == title2
          ? _value.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as IdCardf?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdCardfCopyWith<$Res>? get idCard {
    if (_value.idCard == null) {
      return null;
    }

    return $IdCardfCopyWith<$Res>(_value.idCard!, (value) {
      return _then(_value.copyWith(idCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotefCopyWith<$Res> implements $NotefCopyWith<$Res> {
  factory _$$_NotefCopyWith(_$_Notef value, $Res Function(_$_Notef) then) =
      __$$_NotefCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? title2, IdCardf? idCard});

  @override
  $IdCardfCopyWith<$Res>? get idCard;
}

/// @nodoc
class __$$_NotefCopyWithImpl<$Res> extends _$NotefCopyWithImpl<$Res, _$_Notef>
    implements _$$_NotefCopyWith<$Res> {
  __$$_NotefCopyWithImpl(_$_Notef _value, $Res Function(_$_Notef) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? title2 = freezed,
    Object? idCard = freezed,
  }) {
    return _then(_$_Notef(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      title2: freezed == title2
          ? _value.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as IdCardf?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notef implements _Notef {
  const _$_Notef({this.id, this.title, this.title2, this.idCard});

  factory _$_Notef.fromJson(Map<String, dynamic> json) =>
      _$$_NotefFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? title2;
  @override
  final IdCardf? idCard;

  @override
  String toString() {
    return 'Notef(id: $id, title: $title, title2: $title2, idCard: $idCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notef &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.title2, title2) || other.title2 == title2) &&
            (identical(other.idCard, idCard) || other.idCard == idCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, title2, idCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotefCopyWith<_$_Notef> get copyWith =>
      __$$_NotefCopyWithImpl<_$_Notef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotefToJson(
      this,
    );
  }
}

abstract class _Notef implements Notef {
  const factory _Notef(
      {final String? id,
      final String? title,
      final String? title2,
      final IdCardf? idCard}) = _$_Notef;

  factory _Notef.fromJson(Map<String, dynamic> json) = _$_Notef.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get title2;
  @override
  IdCardf? get idCard;
  @override
  @JsonKey(ignore: true)
  _$$_NotefCopyWith<_$_Notef> get copyWith =>
      throw _privateConstructorUsedError;
}
