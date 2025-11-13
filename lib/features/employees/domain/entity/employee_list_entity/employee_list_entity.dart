import 'package:employee_app/features/employees/data/models/employee_list_model/employee_list_model.dart';
import 'package:employee_app/features/employees/data/models/employee_model/employee_model.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity/employee_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_list_entity.freezed.dart';


@freezed
abstract class EmployeeListEntity with _$EmployeeListEntity {
  const EmployeeListEntity._();
  const factory EmployeeListEntity({
    required int page,
    @JsonKey(name: "per_page") required int perPage,
    required int total,
    @JsonKey(name: "total_pages") required int totalPages,
    required List<EmployeeEntity> data,
  }) = _EmployeeListEntity;
  factory EmployeeListEntity.fromModel({required EmployeeListModel model}) =>
      EmployeeListEntity(
        page: model.page,
        perPage: model.perPage,
        total: model.total,
        totalPages: model.totalPages,
        data: model.data
            .map((e) => EmployeeEntity.fromModel(model: e))
            .toList(),
      );

  EmployeeListModel toModel() => EmployeeListModel(
    page: page,
    perPage: perPage,
    total: total,
    totalPages: totalPages,
    data: data.map((e) => e.toModel()).toList(),
  );
}
