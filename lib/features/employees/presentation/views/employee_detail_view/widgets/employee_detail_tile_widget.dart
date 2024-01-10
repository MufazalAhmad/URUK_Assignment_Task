import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeeDetailTileWidget extends StatelessWidget {
  const EmployeeDetailTileWidget({
    super.key,
    required this.detail,
  });

  final String detail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Row(
        children: [
          SizedBox(width: 0.2.sw),

          /// [Purple Dot]
          Container(
            height: 20.h,
            width: 30.w,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),

          SizedBox(
            width: 20.w,
          ),

          /// [detail]
          Text(
            detail,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          )
        ],
      ),
    );
  }
}
