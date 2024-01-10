import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';

abstract class EmployeeRepository {
  Future<List<EmployeeEntity>> getEmployees();
}
