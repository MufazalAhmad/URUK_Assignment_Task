// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/employees/datasource/remote/remote_datasource.dart'
    as _i5;
import '../../features/employees/datasource/remote/remote_datasource_impl.dart'
    as _i6;
import '../../features/employees/domain/repository/employee_repository.dart'
    as _i7;
import '../../features/employees/domain/repository/employee_repository_impl.dart'
    as _i8;
import '../../helpers/network/network_helper.dart' as _i3;
import '../../helpers/network/network_helper_impl.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.NetWorkHelper>(_i4.NetworkHelperImpl());
    gh.singleton<_i5.RemoteDataSource>(
        _i6.RemoteDataSourceImpl(networkHelper: gh<_i3.NetWorkHelper>()));
    gh.singleton<_i7.EmployeeRepository>(_i8.EmployeeRepositoryImpl(
        remoteDataSource: gh<_i5.RemoteDataSource>()));
    return this;
  }
}
