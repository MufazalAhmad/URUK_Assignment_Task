// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';

class EmployeeModel {
  final int id;

  final String employeeName;
  final num employeeSalary;
  final int employeeAge;
  final String profileImage;

  EmployeeModel({
    required this.id,
    required this.employeeName,
    required this.employeeSalary,
    required this.employeeAge,
    required this.profileImage,
  });

  factory EmployeeModel.formEntity(EmployeeEntity entity) {
    return EmployeeModel(
      id: entity.id,
      employeeName: entity.employeeName,
      employeeSalary: entity.employeeSalary,
      employeeAge: entity.employeeAge,
      profileImage: entity.profileImage,
    );
  }

  EmployeeModel copyWith({
    int? id,
    String? employeeName,
    num? employeeSalary,
    int? employeeAge,
    String? profileImage,
  }) {
    return EmployeeModel(
      id: id ?? this.id,
      employeeName: employeeName ?? this.employeeName,
      employeeSalary: employeeSalary ?? this.employeeSalary,
      employeeAge: employeeAge ?? this.employeeAge,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}
