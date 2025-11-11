import 'package:employee_app/features/employees/data/models/employee_model/employee_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_entity.freezed.dart';

@freezed
abstract class EmployeeEntity with _$EmployeeEntity {
  const EmployeeEntity._();
  const factory EmployeeEntity({
    required int id,
    required String email,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required String avatar,
  }) = _EmployeeEntity;

  factory EmployeeEntity.fromModel({required EmployeeModel employees}) =>
      EmployeeEntity(
        id: employees.id,
        email: employees.email,
        firstName: employees.firstName,
        lastName: employees.lastName,
        avatar: employees.avatar,
      );

  EmployeeModel toModel() => EmployeeModel(
    id: id,
    email: email,
    firstName: firstName,
    lastName: lastName,
    avatar: avatar,
  );
}
