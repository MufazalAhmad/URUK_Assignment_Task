class EmployeeEntity {
  final int id;
  final String employeeName;
  final num employeeSalary;
  final int employeeAge;
  final String profileImage;

  EmployeeEntity({
    required this.id,
    required this.employeeName,
    required this.employeeAge,
    required this.employeeSalary,
    required this.profileImage,
  });

  factory EmployeeEntity.fromJson(Map<String, dynamic> json) {
    return EmployeeEntity(
      id: json['id'],
      employeeAge: json['employee_age'],
      employeeName: json['employee_name'],
      employeeSalary: json['employee_salary'],
      profileImage: json['profile_image'],
    );
  }
}
