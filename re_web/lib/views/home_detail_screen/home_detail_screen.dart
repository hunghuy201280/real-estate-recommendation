import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/views/common_widgets/common_button.dart';
import 'package:re_web/views/home_detail_screen/widgets/left_column.dart';
import 'package:re_web/views/home_screen/widgets/home_item_widget.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({Key? key}) : super(key: key);
  static const id = "/home-detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Header(),
              16.verticalSpace,
              const _TopRow(),
              16.verticalSpace,
              const _ImageAndContact(),
              64.verticalSpace,
              Text(
                "In case the content of the posting is found to be incorrect, please notify and provide information to the Administration Board at Hotline 19001881 for the fastest and most timely support.",
                style: TextConfigs.kText24_2,
              ).withPadding(EdgeInsets.symmetric(horizontal: 224.w)),
              64.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

class _ImageAndContact extends StatelessWidget {
  const _ImageAndContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LeftColumn(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "CONTACT",
                style: TextConfigs.kText24_2_600,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Name',
                width: 398.w,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Email',
                width: 398.w,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Phone',
                width: 398.w,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Message',
                width: 398.w,
                maxLines: 5,
              ),
              24.verticalSpace,
              SizedBox(
                width: 398.w,
                child: const CommonButton(
                  title: "SEND",
                  padding: EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: AppColors.kColor2,
                  color: AppColors.kColor1,
                ),
              )
            ],
          ),
        )
      ],
    ).withPadding(EdgeInsets.symmetric(horizontal: 224.w));
  }
}

class CommonFormField extends StatelessWidget {
  const CommonFormField({
    Key? key,
    required this.hint,
    this.width,
    this.maxLines = 1,
    this.obscure = false,
  }) : super(key: key);
  final String hint;
  final double? width;
  final int? maxLines;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        obscureText: obscure,
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

class _TopRow extends StatelessWidget {
  const _TopRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Real estate name",
              style: TextConfigs.kText36_2_600,
            ).withPadding(EdgeInsets.only(left: 224.w)),
            8.verticalSpace,
            Text(
              "Street Diervel, New Jersey",
              style: TextConfigs.kText24_3_700,
            ).withPadding(EdgeInsets.only(left: 224.w)),
          ],
        ),
        Row(
          children: [
            24.horizontalSpace,
            Text(
              "\$1200",
              style: TextConfigs.kText36_2,
            ),
            Container(
              height: 50.w,
              width: 3.w,
              color: AppColors.kColor2,
              margin: EdgeInsets.symmetric(horizontal: 32.w),
            ),
            const VerticalText(
              top: '72',
              bottom: "m2",
              color: AppColors.kColor2,
              bottomColor: AppColors.kColor3,
            ),
            Container(
              height: 50.w,
              width: 3.w,
              color: AppColors.kColor2,
              margin: EdgeInsets.symmetric(horizontal: 32.w),
            ),
            const VerticalText(
              top: '300',
              bottom: "\$/m2",
              color: AppColors.kColor2,
              bottomColor: AppColors.kColor3,
            ),
            24.horizontalSpace
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "ic_danger".assetIcon,
              width: 24.w,
              height: 24.w,
            ),
            60.horizontalSpace,
            Image.asset(
              "ic_send".assetIcon,
              width: 24.w,
              height: 24.w,
            ),
            60.horizontalSpace,
            Image.asset(
              "ic_heart".assetIcon,
              width: 24.w,
              height: 24.w,
            ),
            224.horizontalSpace,
          ],
        )
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.kColor2,
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            "logo_white".assetImage,
            color: AppColors.kColor2,
          ).withPadding(EdgeInsets.all(16.w)),
          const Spacer(),
          const CommonButton(
            title: 'Log out',
            backgroundColor: AppColors.kColor2,
            color: AppColors.kColor1,
          ),
          224.horizontalSpace,
        ],
      ),
    );
  }
}
