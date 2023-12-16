// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addressf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Addressf _$AddressfFromJson(Map<String, dynamic> json) {
  return _Addressf.fromJson(json);
}

/// @nodoc
mixin _$Addressf {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get title2 => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError; // Notef? note,
  List<Notef>? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressfCopyWith<Addressf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressfCopyWith<$Res> {
  factory $AddressfCopyWith(Addressf value, $Res Function(Addressf) then) =
      _$AddressfCopyWithImpl<$Res, Addressf>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      int? age,
      String? title2,
      bool? isCompleted,
      List<Notef>? notes});
}

/// @nodoc
class _$AddressfCopyWithImpl<$Res, $Val extends Addressf>
    implements $AddressfCopyWith<$Res> {
  _$AddressfCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? age = freezed,
    Object? title2 = freezed,
    Object? isCompleted = freezed,
    Object? notes = freezed,
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
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      title2: freezed == title2
          ? _value.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Notef>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressfCopyWith<$Res> implements $AddressfCopyWith<$Res> {
  factory _$$_AddressfCopyWith(
          _$_Addressf value, $Res Function(_$_Addressf) then) =
      __$$_AddressfCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      int? age,
      String? title2,
      bool? isCompleted,
      List<Notef>? notes});
}

/// @nodoc
class __$$_AddressfCopyWithImpl<$Res>
    extends _$AddressfCopyWithImpl<$Res, _$_Addressf>
    implements _$$_AddressfCopyWith<$Res> {
  __$$_AddressfCopyWithImpl(
      _$_Addressf _value, $Res Function(_$_Addressf) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? age = freezed,
    Object? title2 = freezed,
    Object? isCompleted = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_Addressf(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      title2: freezed == title2
          ? _value.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Notef>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Addressf implements _Addressf {
  const _$_Addressf(
      {this.id,
      this.title,
      this.age,
      this.title2,
      this.isCompleted,
      final List<Notef>? notes})
      : _notes = notes;

  factory _$_Addressf.fromJson(Map<String, dynamic> json) =>
      _$$_AddressfFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final int? age;
  @override
  final String? title2;
  @override
  final bool? isCompleted;
// Notef? note,
  final List<Notef>? _notes;
// Notef? note,
  @override
  List<Notef>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Addressf(id: $id, title: $title, age: $age, title2: $title2, isCompleted: $isCompleted, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Addressf &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.title2, title2) || other.title2 == title2) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, age, title2,
      isCompleted, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressfCopyWith<_$_Addressf> get copyWith =>
      __$$_AddressfCopyWithImpl<_$_Addressf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressfToJson(
      this,
    );
  }
}

abstract class _Addressf implements Addressf {
  const factory _Addressf(
      {final String? id,
      final String? title,
      final int? age,
      final String? title2,
      final bool? isCompleted,
      final List<Notef>? notes}) = _$_Addressf;

  factory _Addressf.fromJson(Map<String, dynamic> json) = _$_Addressf.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  int? get age;
  @override
  String? get title2;
  @override
  bool? get isCompleted;
  @override // Notef? note,
  List<Notef>? get notes;
  @override
  @JsonKey(ignore: true)
  _$$_AddressfCopyWith<_$_Addressf> get copyWith =>
      throw _privateConstructorUsedError;
}
