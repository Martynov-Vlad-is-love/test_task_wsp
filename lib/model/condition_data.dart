import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_wsp/model/custom_point.dart';

part 'condition_data.freezed.dart';

part 'condition_data.g.dart';

@freezed
class ConditionData with _$ConditionData {
  const factory ConditionData(
      {required String id,
      required List<String> field,
      required CustomPoint start,
      required CustomPoint end,
      }) = _ConditionData;

  factory ConditionData.fromJson(Map<String, dynamic> json) =>
      _$ConditionDataFromJson(json);
}
