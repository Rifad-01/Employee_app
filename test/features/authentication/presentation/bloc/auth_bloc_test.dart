import 'package:employee_app/features/authentication/data/datasource/auth_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([AuthDataSource])
void main() {
  late AuthDataSource authDataSource;

  setUp(() {
    AuthDataSource;
  });

  tearDown(() {
    
  });
}
