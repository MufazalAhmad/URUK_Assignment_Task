import 'package:go_router/go_router.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee.dart';
import 'package:uruk_assignment/features/employees/presentation/views/employee_detail_view/employee_detail_view.dart';
import 'package:uruk_assignment/features/employees/presentation/views/employees_list_view/employees_list_view.dart';
import 'package:uruk_assignment/utils/router/paths.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: RoutePaths.employeesListView,
      builder: (context, state) {
        return const EmployeesListView();
      },
    ),
    GoRoute(
      path: RoutePaths.employeeDetailView,
      builder: (context, state) {
        final employee = state.extra as EmployeeModel;
        return EmployeeDetailView(employee: employee);
      },
    ),
  ],
);
