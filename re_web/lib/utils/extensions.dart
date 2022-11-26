import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

extension StringExt on String {
  String get assetImage => "assets/images/$this.png";
  String get assetIcon => "assets/icons/$this.png";

  SvgPicture getIcon({double? width, double? height, Color? color}) =>
      SvgPicture.asset(
        "assets/icons/ic_$this.svg",
        color: color,
        width: width,
        height: height,
      );
  String shortFor({int shortForLength = 20}) {
    assert(shortForLength >= 3);
    if (length <= shortForLength - 3) {
      return this;
    }
    final cutIndex = shortForLength ~/ 2;
    final remainingChar = shortForLength - cutIndex;
    return "${substring(0, cutIndex)}...${substring(length - remainingChar + 3)}";
  }
}

extension NumExt on num {
  String get decimalFormat {
    return NumberFormat.decimalPattern().format(this).replaceAll(",", ".");
  }
}

extension OutlineInputBorderExt on OutlineInputBorder {
  OutlineInputBorder withBorder(Color color, {double? width}) => copyWith(
        borderSide: BorderSide(color: color, width: width ?? 1),
      );
}

extension DioErrorExt on DioError {
  String get errorDetail {
    final data = response?.data;
    if (data == null) {
      return "Error occured";
    }
    return data["error"];
  }
}

extension WidgetExt on Widget {
  Padding withPadding(EdgeInsets edgeInsets) {
    return Padding(
      padding: edgeInsets,
      child: this,
    );
  }
}
