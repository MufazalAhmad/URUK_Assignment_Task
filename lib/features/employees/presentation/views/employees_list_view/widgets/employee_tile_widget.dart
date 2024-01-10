import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uruk_assignment/features/employees/domain/models/employee.dart';
import 'package:uruk_assignment/utils/constants/app_constant.dart';
import 'package:uruk_assignment/utils/router/paths.dart';

class EmployeeTileWidget extends StatelessWidget {
  const EmployeeTileWidget({
    super.key,
    required this.employee,
  });

  final EmployeeModel employee;

  /// [on Tap detail ]
  void onTapDetail(BuildContext context, EmployeeModel employeeModel) {
    GoRouter.of(context).push(
      RoutePaths.employeeDetailView,
      extra: employeeModel,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Row(
        children: [
          SizedBox(width: 20.w),

          /// [Employee image]
          Container(
            height: 50.h,
            width: 50.w,
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

          SizedBox(width: 20.w),

          /// [Employee name]
          Text(
            employee.employeeName,
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),

          const Spacer(),

          /// [Detail button]
          InkWell(
            onTap: () => onTapDetail(context, employee),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 6.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.grey),
              ),
              child: Text(
                'Details',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),

          SizedBox(width: 20.w),
        ],
      ),
    );
  }
}
