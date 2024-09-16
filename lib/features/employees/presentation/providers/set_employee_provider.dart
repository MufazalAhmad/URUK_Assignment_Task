import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
