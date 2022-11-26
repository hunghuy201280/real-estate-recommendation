import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';

class CommonFormField extends StatelessWidget {
  const CommonFormField({
    Key? key,
    required this.hint,
    this.width,
    this.maxLines = 1,
    this.obscure = false,
    this.controller,
    this.onSubmitted,
  }) : super(key: key);
  final String hint;
  final double? width;
  final int? maxLines;
  final bool obscure;
  final ValueChanged<String?>? onSubmitted;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        onSaved: onSubmitted,
        onFieldSubmitted: onSubmitted,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintStyle: TextConfigs.kText18_3,
          hintText: hint,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.kColor2,
              width: 30.w,
            ),
            borderRadius: BorderRadius.circular(8.w),
          ),
        ),
      ),
    );
  }
}
