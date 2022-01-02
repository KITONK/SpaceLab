import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget figureWidget(Widget child) {
  return ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            height: 175,
            width: double.infinity,
            color: const Color(0xff8b84e2),
            child: child,
          ),
  );
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(size.width - 150, size.height + 20);
    var endPoint = Offset(size.width, 160);

    Path path = Path()
      ..lineTo(0, size.height - 60)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(endPoint.dx, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
