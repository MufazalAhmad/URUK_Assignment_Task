import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee.dart';

abstract class RemoteDataSource {
  Future<List<EmployeeEntity>> getEmployees();
}
