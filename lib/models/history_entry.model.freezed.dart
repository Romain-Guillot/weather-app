// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_entry.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEntryModel {
  int? get id => throw _privateConstructorUsedError;
  GeocodingPlace get place => throw _privateConstructorUsedError;
  DateTime get lastUsed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryEntryModelCopyWith<HistoryEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEntryModelCopyWith<$Res> {
  factory $HistoryEntryModelCopyWith(
          HistoryEntryModel value, $Res Function(HistoryEntryModel) then) =
      _$HistoryEntryModelCopyWithImpl<$Res, HistoryEntryModel>;
  @useResult
  $Res call({int? id, GeocodingPlace place, DateTime lastUsed});
}

/// @nodoc
class _$HistoryEntryModelCopyWithImpl<$Res, $Val extends HistoryEntryModel>
    implements $HistoryEntryModelCopyWith<$Res> {
  _$HistoryEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? place = null,
    Object? lastUsed = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as GeocodingPlace,
      lastUsed: null == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryEntryModelCopyWith<$Res>
    implements $HistoryEntryModelCopyWith<$Res> {
  factory _$$_HistoryEntryModelCopyWith(_$_HistoryEntryModel value,
          $Res Function(_$_HistoryEntryModel) then) =
      __$$_HistoryEntryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, GeocodingPlace place, DateTime lastUsed});
}

/// @nodoc
class __$$_HistoryEntryModelCopyWithImpl<$Res>
    extends _$HistoryEntryModelCopyWithImpl<$Res, _$_HistoryEntryModel>
    implements _$$_HistoryEntryModelCopyWith<$Res> {
  __$$_HistoryEntryModelCopyWithImpl(
      _$_HistoryEntryModel _value, $Res Function(_$_HistoryEntryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? place = null,
    Object? lastUsed = null,
  }) {
    return _then(_$_HistoryEntryModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as GeocodingPlace,
      lastUsed: null == lastUsed
          ? _value.lastUsed
          : lastUsed // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_HistoryEntryModel implements _HistoryEntryModel {
  _$_HistoryEntryModel({this.id, required this.place, required this.lastUsed});

  @override
  final int? id;
  @override
  final GeocodingPlace place;
  @override
  final DateTime lastUsed;

  @override
  String toString() {
    return 'HistoryEntryModel(id: $id, place: $place, lastUsed: $lastUsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryEntryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.lastUsed, lastUsed) ||
                other.lastUsed == lastUsed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, place, lastUsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryEntryModelCopyWith<_$_HistoryEntryModel> get copyWith =>
      __$$_HistoryEntryModelCopyWithImpl<_$_HistoryEntryModel>(
          this, _$identity);
}

abstract class _HistoryEntryModel implements HistoryEntryModel {
  factory _HistoryEntryModel(
      {final int? id,
      required final GeocodingPlace place,
      required final DateTime lastUsed}) = _$_HistoryEntryModel;

  @override
  int? get id;
  @override
  GeocodingPlace get place;
  @override
  DateTime get lastUsed;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryEntryModelCopyWith<_$_HistoryEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
