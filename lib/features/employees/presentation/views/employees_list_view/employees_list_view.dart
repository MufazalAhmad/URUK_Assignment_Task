import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uruk_assignment/features/employees/presentation/views/employees_list_view/widgets/employee_list_widget.dart';

class EmployeesListView extends StatelessWidget {
  const EmployeesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            children: [
              SizedBox(height: 20.h),

              /// [title]
              Text(
                'Employees',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30.h),

              /// [Employees list]
              const EmployeeListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
