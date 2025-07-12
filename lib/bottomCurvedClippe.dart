import 'dart:ui';

import 'package:flutter/material.dart';

class BottomCurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50); // بداية المنحني

    // إنشاء منحني رباعي
    path.quadraticBezierTo(
      size.width / 2,
      size.height, // نقطة التحكم في المنتصف
      size.width,
      size.height - 50, // نهاية المنحني
    );

    path.lineTo(size.width, 0); // العودة إلى الأعلى
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
