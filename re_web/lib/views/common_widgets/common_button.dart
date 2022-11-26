import 'package:flutter/material.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.title,
    this.color = AppColors.kColor2,
    this.backgroundColor,
    this.padding,
    this.onTap,
  }) : super(key: key);
  final String title;
  final Color color;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        foregroundColor: AppColors.kColor1,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: color,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        title,
        style: TextConfigs.kText18_2.copyWith(
          color: color,
        ),
      ),
    );
  }
}
