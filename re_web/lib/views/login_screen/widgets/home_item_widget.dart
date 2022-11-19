import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/views/home_detail_screen/home_detail_screen.dart';

class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(536.w, 377.w),
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: () {
            context.go(HomeDetailScreen.id);
          },
          child: Stack(
            children: [
              Positioned.fill(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    AppColors.kColor2.withOpacity(0.3),
                    BlendMode.darken,
                  ),
                  child: Image.network(
                    "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kColor2,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    margin: EdgeInsets.all(24.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                    child: Text(
                      "For rent",
                      style: TextConfigs.kText20_1,
                    ),
                  ),
                  const Spacer(),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        24.horizontalSpace,
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "\$1200",
                            style: TextConfigs.kText36_1,
                          ),
                        ),
                        const Spacer(),
                        const VerticalText(
                          top: '4',
                          bottom: "ROOMS",
                        ),
                        32.horizontalSpace,
                        Container(
                          height: 50.w,
                          width: 3.w,
                          color: AppColors.kColor1,
                        ),
                        32.horizontalSpace,
                        const VerticalText(
                          top: '72',
                          bottom: "m2",
                        ),
                        24.horizontalSpace
                      ],
                    ),
                  ),
                  Text(
                    "Street Diervel, New Jersey",
                    style: TextConfigs.kText24_1_700,
                  ).withPadding(EdgeInsets.only(left: 24.w)),
                  16.verticalSpace,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalText extends StatelessWidget {
  const VerticalText({
    Key? key,
    required this.top,
    required this.bottom,
    this.color = AppColors.kColor1,
    this.bottomColor = AppColors.kColor1,
  }) : super(key: key);

  final String top;
  final String bottom;
  final Color color;
  final Color bottomColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          top,
          style: TextConfigs.kText32_1_700.copyWith(
            color: color,
          ),
        ),
        Text(
          bottom,
          style: TextConfigs.kText28_1_700.copyWith(
            color: bottomColor,
          ),
        )
      ],
    );
  }
}
