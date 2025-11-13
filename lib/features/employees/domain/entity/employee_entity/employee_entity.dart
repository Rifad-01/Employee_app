import 'package:employee_app/features/employees/data/models/employee_model/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_entity.freezed.dart';

@freezed
abstract class EmployeeEntity with _$EmployeeEntity {
  const EmployeeEntity._();
  const factory EmployeeEntity({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatar,
  }) = _EmployeeEntity;

  factory EmployeeEntity.fromModel({required EmployeeModel model}) =>
      EmployeeEntity(
        id: model.id,
        email: model.email,
        firstName: model.firstName,
        lastName: model.lastName,
        avatar: model.avatar,
      );

  EmployeeModel toModel() => EmployeeModel(
    id: id,
    email: email,
    firstName: firstName,
    lastName: lastName,
    avatar: avatar,
  );
}
