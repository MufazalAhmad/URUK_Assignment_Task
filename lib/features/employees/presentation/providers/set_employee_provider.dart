import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee_notifier.dart';
import 'package:uruk_assignment/features/employees/domain/repository/employee_repository.dart';
import 'package:uruk_assignment/utils/di/di.dart';

import '../../domain/models/employee.dart';

class SetEmployeeNotifier extends ChangeNotifier {
  SetEmployeeNotifier();

  final repository = sl<EmployeeRepository>();

  void saveEmployee() async {
    await repository.saveEmployee();
  }

  Future<EmployeeModel> getEmployee() async {
    final employeeEntity = await repository.getEmployee();

    return EmployeeModel.formEntity(employeeEntity);
  }
}

final setEmployeeNotifierProvider =
    ChangeNotifierProvider<SetEmployeeNotifier>((ref) => SetEmployeeNotifier());

class SetEmployeeStateNotifier extends StateNotifier<EmployeeNotifier> {
  SetEmployeeStateNotifier() : super(EmployeeNotifier()); // Fixed constructor

  final repository = sl<EmployeeRepository>();

  /// Get employee and update state
  Future<void> setName(name) async {
    state = state.copyWith(employeeName: name);
  }

  Future<void> setSalary(salary) async {
    state = state.copyWith(employeeSalary: salary);
  }

  Future<void> setAge(age) async {
    state = state.copyWith(employeeAge: age);
  }
}

final setEmployeeStateNotifierProvider =
    StateNotifierProvider<SetEmployeeStateNotifier, EmployeeNotifier>(
        (ref) => SetEmployeeStateNotifier());
