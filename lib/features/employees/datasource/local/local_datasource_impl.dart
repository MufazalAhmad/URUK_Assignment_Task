import 'package:injectable/injectable.dart';
import 'package:uruk_assignment/features/employees/datasource/entities/employee_entity.dart';
import 'package:uruk_assignment/features/employees/datasource/local/local_datasource.dart';
import 'package:uruk_assignment/features/employees/datasource/remote/remote_datasource.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee.dart';
import 'package:uruk_assignment/helpers/network/network_helper.dart';
import 'package:uruk_assignment/utils/endpoints/endpoints.dart';

@Singleton(as: LocalDatasource)
class LocalDatasourceImpl extends LocalDatasource {
  LocalDatasourceImpl();
  @override
  @override
  Future<EmployeeEntity> getEmployee() {
    throw UnimplementedError();
  }

  @override
  Future<void> saveEmployee() {
    throw UnimplementedError();
  }
}
