import 'package:injectable/injectable.dart';
import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';
import 'package:uruk_assignment/features/employees/datasource/local/local_datasource.dart';
import 'package:uruk_assignment/features/employees/datasource/remote/remote_datasource.dart';
import 'package:uruk_assignment/features/employees/domain/repository/employee_repository.dart';

@Singleton(as: EmployeeRepository)
class EmployeeRepositoryImpl extends EmployeeRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDatasource localDatasource;

  EmployeeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDatasource,
  });

  @override
  Future<List<EmployeeEntity>> getEmployees() async {
    return await remoteDataSource.getEmployees();
  }

  @override
  Future<EmployeeEntity> getEmployee() async {
    return await localDatasource.getEmployee();
  }

  @override
  Future<void> saveEmployee() async {
    return await localDatasource.saveEmployee();
  }
}
