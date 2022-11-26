import 'package:flutter/material.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:shimmer/shimmer.dart';

class Loader extends StatelessWidget {
  const Loader(
      {Key? key,
      required this.width,
      required this.height,
      required this.radius,
      this.border})
      : super(key: key);

  final double width, height, radius;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
        baseColor: AppColors.kColor10,
        highlightColor: AppColors.kColor11,
        child: Container(
          decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(radius),
            color: AppColors.kColor11.withOpacity(0.5),
          ),
          height: height,
        ),
      ),
    );
  }
}
