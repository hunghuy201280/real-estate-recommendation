import 'package:flutter/material.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.title,
    this.color = AppColors.kColor2,
    this.backgroundColor,
  }) : super(key: key);
  final String title;
  final Color color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
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
