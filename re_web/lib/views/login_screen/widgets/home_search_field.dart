import 'package:flutter/material.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextConfigs.kText24_2,
      cursorColor: AppColors.kColor2,
      decoration: InputDecoration(
        hintText: "City, address, school, ZIP,...",
        hintStyle: TextConfigs.kText24_3,
        border: InputBorder.none,
        isDense: false,
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        isCollapsed: true,
        suffixIcon: Material(
          color: AppColors.kColor2,
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(
            5,
          ),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              "ic_search".assetIcon,
            ),
          ),
        ),
      ),
    );
  }
}
