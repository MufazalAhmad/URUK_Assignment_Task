import 'package:injectable/injectable.dart';
import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';
import 'package:uruk_assignment/features/employees/datasource/remote/remote_datasource.dart';
import 'package:uruk_assignment/features/employees/domain/repository/employee_repository.dart';

@Singleton(as: EmployeeRepository)
class EmployeeRepositoryImpl extends EmployeeRepository {
  final RemoteDataSource remoteDataSource;

  EmployeeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<EmployeeEntity>> getEmployees() async {
    return await remoteDataSource.getEmployees();
  }
}
