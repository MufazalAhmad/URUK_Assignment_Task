import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee.dart';
import 'package:uruk_assignment/features/employees/presentation/views/employee_detail_view/widgets/employee_detail_tile_widget.dart';
import 'package:uruk_assignment/utils/constants/app_constant.dart';

class EmployeeDetailView extends StatelessWidget {
  const EmployeeDetailView({
    super.key,
    required this.employee,
  });

  final EmployeeModel employee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// [Top Bar]
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// [Back button]
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                  ),

                  /// [Detail title]
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  /// [cancel]
                  Row(
                    children: [
                      Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 30.w)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30.h),

              /// [Employee image]
              Container(
                height: 100.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: AppConstants.randomImage,
                    height: 90.h,
                    fit: BoxFit.cover,
                    width: 90.w,
                  ),
                ),
              ),

              SizedBox(height: 30.h),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// [id]
                  EmployeeDetailTileWidget(
                    detail: employee.id.toString(),
                  ),

                  /// [name]
                  EmployeeDetailTileWidget(
                    detail: employee.employeeName.toString(),
                  ),

                  /// [salary]
                  EmployeeDetailTileWidget(
                    detail: employee.employeeSalary.toString(),
                  ),

                  /// [Age]
                  EmployeeDetailTileWidget(
                    detail: employee.employeeAge.toString(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
