import 'package:employee_app/core/failure/failure.dart';
import 'package:employee_app/features/employees/domain/entity/employee_entity/employee_entity.dart';
import 'package:employee_app/features/employees/domain/entity/employee_list_entity/employee_list_entity.dart';

class TestData {
  static final testEmployee = [
    EmployeeEntity(
      id: 1,
      email: 'test@gmail.com',
      firstName: 'testfirstname',
      lastName: 'testlastname',
      avatar: 'test avatar',
    ),
    EmployeeEntity(
      id: 2,
      email: 'test@gmail.com',
      firstName: 'testfirstname',
      lastName: 'testlastname',
      avatar: 'test avatar',
    ),
  ];

  static EmployeeListEntity get testEmployeeList => EmployeeListEntity(
    page: 1,
    perPage: 2,
    total: 2,
    totalPages: 3,
    data: testEmployee,
  );

  static final unautherisedFailure = UnauthorizedFailure(
    message: "Unauthorized Please check your username and password",
  );
  static final networkFailure = NetworkFailure(
    message: "Network failure check network",
  );
  static final unknownFailure = UnknownFailure(
    message: "smething went wrong!!",
  );
  static final timeOutFailure = TimeoutFailure(
    message: "Plaese check your network connection",
  ); 
}
