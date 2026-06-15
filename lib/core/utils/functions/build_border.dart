  import 'package:flutter/material.dart';

OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
    borderSide: BorderSide(color: color ?? Colors.transparent),
        borderRadius: BorderRadius.circular(30)
      );
  }