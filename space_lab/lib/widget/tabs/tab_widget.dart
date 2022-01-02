import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    Key? key,
    this.index,
    this.currentIndex,
    required this.name,
    required this.text,
  }) : super(key: key);

  final int ? index;
  final int ? currentIndex;
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            name,
            width: 25,
            height: 25,
            color: currentIndex == index ? const Color(0xff8c84e2) : Colors.grey,
          ),
          SizedBox(height: 7.5.h,),
          Text(
            text,
            style: TextStyle(
              color: currentIndex == index ? const Color(0xff8c84e2) : Colors.grey,
              fontSize: 8.5.sp,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
    );
  }
}
