import 'package:employee_app/features/employees/data/models/employee_model/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_list_model.freezed.dart';
part 'employee_list_model.g.dart';

@freezed
abstract class EmployeeListModel with _$EmployeeListModel {
  const factory EmployeeListModel({
    required int page,
    @JsonKey(name: "per_page") required int perPage,
    required int total,
    @JsonKey(name: "total_pages") required int totalPages,
    required List<EmployeeModel> data,
  }) = _EmployeeListModel;

  factory EmployeeListModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeListModelFromJson(json);
}
