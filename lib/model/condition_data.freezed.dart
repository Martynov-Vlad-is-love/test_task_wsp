// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'condition_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConditionData _$ConditionDataFromJson(Map<String, dynamic> json) {
  return _ConditionData.fromJson(json);
}

/// @nodoc
mixin _$ConditionData {
  String get id => throw _privateConstructorUsedError;
  List<String> get field => throw _privateConstructorUsedError;
  CustomPoint get start => throw _privateConstructorUsedError;
  CustomPoint get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionDataCopyWith<ConditionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionDataCopyWith<$Res> {
  factory $ConditionDataCopyWith(
          ConditionData value, $Res Function(ConditionData) then) =
      _$ConditionDataCopyWithImpl<$Res, ConditionData>;
  @useResult
  $Res call(
      {String id, List<String> field, CustomPoint start, CustomPoint end});

  $CustomPointCopyWith<$Res> get start;
  $CustomPointCopyWith<$Res> get end;
}

/// @nodoc
class _$ConditionDataCopyWithImpl<$Res, $Val extends ConditionData>
    implements $ConditionDataCopyWith<$Res> {
  _$ConditionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? field = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as CustomPoint,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as CustomPoint,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomPointCopyWith<$Res> get start {
    return $CustomPointCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomPointCopyWith<$Res> get end {
    return $CustomPointCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConditionDataImplCopyWith<$Res>
    implements $ConditionDataCopyWith<$Res> {
  factory _$$ConditionDataImplCopyWith(
          _$ConditionDataImpl value, $Res Function(_$ConditionDataImpl) then) =
      __$$ConditionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, List<String> field, CustomPoint start, CustomPoint end});

  @override
  $CustomPointCopyWith<$Res> get start;
  @override
  $CustomPointCopyWith<$Res> get end;
}

/// @nodoc
class __$$ConditionDataImplCopyWithImpl<$Res>
    extends _$ConditionDataCopyWithImpl<$Res, _$ConditionDataImpl>
    implements _$$ConditionDataImplCopyWith<$Res> {
  __$$ConditionDataImplCopyWithImpl(
      _$ConditionDataImpl _value, $Res Function(_$ConditionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? field = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$ConditionDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value._field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as CustomPoint,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as CustomPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionDataImpl implements _ConditionData {
  const _$ConditionDataImpl(
      {required this.id,
      required final List<String> field,
      required this.start,
      required this.end})
      : _field = field;

  factory _$ConditionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionDataImplFromJson(json);

  @override
  final String id;
  final List<String> _field;
  @override
  List<String> get field {
    if (_field is EqualUnmodifiableListView) return _field;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field);
  }

  @override
  final CustomPoint start;
  @override
  final CustomPoint end;

  @override
  String toString() {
    return 'ConditionData(id: $id, field: $field, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._field, _field) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_field), start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionDataImplCopyWith<_$ConditionDataImpl> get copyWith =>
      __$$ConditionDataImplCopyWithImpl<_$ConditionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionDataImplToJson(
      this,
    );
  }
}

abstract class _ConditionData implements ConditionData {
  const factory _ConditionData(
      {required final String id,
      required final List<String> field,
      required final CustomPoint start,
      required final CustomPoint end}) = _$ConditionDataImpl;

  factory _ConditionData.fromJson(Map<String, dynamic> json) =
      _$ConditionDataImpl.fromJson;

  @override
  String get id;
  @override
  List<String> get field;
  @override
  CustomPoint get start;
  @override
  CustomPoint get end;
  @override
  @JsonKey(ignore: true)
  _$$ConditionDataImplCopyWith<_$ConditionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
