// ignore_for_file: public_member_api_docs, sort_constructors_first

class EmployeeNotifier {
  final int? id;
  final String? employeeName;
  final num? employeeSalary;
  final int? employeeAge;
  final String? profileImage;

  EmployeeNotifier({
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.profileImage,
  });

  EmployeeNotifier copyWith({
    int? id,
    String? employeeName,
    num? employeeSalary,
    int? employeeAge,
    String? profileImage,
  }) {
    return EmployeeNotifier(
      id: id ?? this.id,
      employeeName: employeeName ?? this.employeeName,
      employeeSalary: employeeSalary ?? this.employeeSalary,
      employeeAge: employeeAge ?? this.employeeAge,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}
