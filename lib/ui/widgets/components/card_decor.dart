import 'package:flutter/material.dart';

BoxDecoration cardBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),

  );
}
BoxDecoration infoCardBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Colors.grey.shade200,
          offset: const Offset(2,3),
          spreadRadius: 8,
          blurRadius: 5
      ),
    ],
  );
}

BoxDecoration statusBoxDecoration(Color color) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(3),

  );
}
