import 'package:injectable/injectable.dart';
import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';
import 'package:uruk_assignment/features/employees/datasource/remote/remote_datasource.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee.dart';
import 'package:uruk_assignment/helpers/network/network_helper.dart';
import 'package:uruk_assignment/utils/endpoints/endpoints.dart';

@Singleton(as: RemoteDataSource)
class RemoteDataSourceImpl extends RemoteDataSource {
  final NetWorkHelper networkHelper;

  RemoteDataSourceImpl({required this.networkHelper});
  @override
  Future<List<EmployeeEntity>> getEmployees() async {
    final response = await networkHelper.get(url: EndPoints.employeesList);

    final employees = List.from(response['data'] ?? [])
        .map((e) => EmployeeEntity.fromJson(e))
        .toList();
    return employees;
  }
}
