// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomPoint _$CustomPointFromJson(Map<String, dynamic> json) {
  return _CustomPoint.fromJson(json);
}

/// @nodoc
mixin _$CustomPoint {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomPointCopyWith<CustomPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomPointCopyWith<$Res> {
  factory $CustomPointCopyWith(
          CustomPoint value, $Res Function(CustomPoint) then) =
      _$CustomPointCopyWithImpl<$Res, CustomPoint>;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$CustomPointCopyWithImpl<$Res, $Val extends CustomPoint>
    implements $CustomPointCopyWith<$Res> {
  _$CustomPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomPointImplCopyWith<$Res>
    implements $CustomPointCopyWith<$Res> {
  factory _$$CustomPointImplCopyWith(
          _$CustomPointImpl value, $Res Function(_$CustomPointImpl) then) =
      __$$CustomPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$CustomPointImplCopyWithImpl<$Res>
    extends _$CustomPointCopyWithImpl<$Res, _$CustomPointImpl>
    implements _$$CustomPointImplCopyWith<$Res> {
  __$$CustomPointImplCopyWithImpl(
      _$CustomPointImpl _value, $Res Function(_$CustomPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$CustomPointImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomPointImpl implements _CustomPoint {
  const _$CustomPointImpl({required this.x, required this.y});

  factory _$CustomPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomPointImplFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'CustomPoint(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomPointImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomPointImplCopyWith<_$CustomPointImpl> get copyWith =>
      __$$CustomPointImplCopyWithImpl<_$CustomPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomPointImplToJson(
      this,
    );
  }
}

abstract class _CustomPoint implements CustomPoint {
  const factory _CustomPoint({required final int x, required final int y}) =
      _$CustomPointImpl;

  factory _CustomPoint.fromJson(Map<String, dynamic> json) =
      _$CustomPointImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$CustomPointImplCopyWith<_$CustomPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
