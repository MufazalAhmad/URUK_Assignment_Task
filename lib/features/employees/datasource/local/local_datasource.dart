import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';

abstract class LocalDatasource {
  Future<EmployeeEntity> getEmployee();
  Future<void> saveEmployee();
}
