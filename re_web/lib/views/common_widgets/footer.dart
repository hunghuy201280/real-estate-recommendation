import 'package:flutter/material.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.kColor2,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "© 2022 HHK Co. All Rights Reserved.",
          style: TextConfigs.kText24_1,
        ),
      ),
    );
  }
}
