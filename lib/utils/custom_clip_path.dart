import 'package:flutter/material.dart';

class BottomLeftRightRoundedClipper extends CustomClipper<Path> {
  final double borderRadius;

  BottomLeftRightRoundedClipper({this.borderRadius = 20});

  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = borderRadius;
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        0, size.height - radius, radius, size.height - radius);
    path.lineTo(size.width - radius, size.height - radius);
    path.quadraticBezierTo(
        size.width, size.height - radius, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(BottomLeftRightRoundedClipper oldClipper) =>
      borderRadius != oldClipper.borderRadius;
}
