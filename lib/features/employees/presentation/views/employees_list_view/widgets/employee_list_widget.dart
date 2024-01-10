import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uruk_assignment/features/employees/presentation/providers/get_employees_list_provider.dart';
import 'package:uruk_assignment/features/employees/presentation/views/employees_list_view/widgets/employee_tile_widget.dart';

class EmployeeListWidget extends ConsumerWidget {
  const EmployeeListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeesAsync = ref.watch(getEmployeesList);

    if (employeesAsync.isLoading) {
      return Center(
        child: SizedBox(
          height: 20.h,
          width: 20.w,
          child: const CircularProgressIndicator(),
        ),
      );
    } else if (employeesAsync.hasError) {
      return Center(
        child: SizedBox(
          height: 20.h,
          width: 20.w,
          child: const Text('Something went wrong'),
        ),
      );
    }

    final employees = employeesAsync.value ?? [];

    return Expanded(
      child: ListView.separated(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return EmployeeTileWidget(
            employee: employee,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 5.h);
        },
      ),
    );
  }
}
