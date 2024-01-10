import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee.dart';
import 'package:uruk_assignment/features/employees/domain/repository/employee_repository.dart';
import 'package:uruk_assignment/utils/di/di.dart';

final getEmployeesList =
    FutureProvider.autoDispose<List<EmployeeModel>>((ref) async {
  final repository = sl<EmployeeRepository>();

  final employeesList = await repository.getEmployees();

  final employees =
      employeesList.map((e) => EmployeeModel.formEntity(e)).toList();

  return employees;
});
