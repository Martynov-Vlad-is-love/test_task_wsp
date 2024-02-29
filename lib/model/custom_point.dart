import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_point.freezed.dart';

part 'custom_point.g.dart';

@freezed
class CustomPoint with _$CustomPoint {
  const factory CustomPoint({required int x, required int y}) = _CustomPoint;

  factory CustomPoint.fromJson(Map<String, dynamic> json) =>
      _$CustomPointFromJson(json);
}
