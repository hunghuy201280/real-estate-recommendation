import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/generated/l10n.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/views/home_screen/widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/";
  const HomeScreen({Key? key}) : super(key: key);

  static HomeScreen get instance {
    return const HomeScreen();
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "background".assetImage,
                  ),
                  const Positioned.fill(
                    child: HomeHeader(),
                  )
                ],
              ),
              Text(
                "Recommend for you",
                style: TextConfigs.kText48_2,
              ).withPadding(
                EdgeInsets.only(left: 80.w, top: 40.w, bottom: 16.w),
              ),
              Text(
                "Listings we think you’ll love",
                style: TextConfigs.kText32_2,
              ).withPadding(
                EdgeInsets.only(left: 80.w, bottom: 32.w),
              ),
              SizedBox(
                height: 377.w,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return SizedBox.fromSize(
                      size: Size(536.w, 377.w),
                      child: Material(
                        clipBehavior: Clip.hardEdge,
                        color: AppColors.kColor6,
                        borderRadius: BorderRadius.circular(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.kColor2,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              margin: EdgeInsets.all(24.w),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 8.w),
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
                                      style: TextConfigs.kText36_2,
                                    ),
                                  ),
                                  const Spacer(),
                                  const _VerticalText(
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
                                  const _VerticalText(
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
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return 76.horizontalSpace;
                  },
                  itemCount: 10,
                ),
              ).withPadding(EdgeInsets.symmetric(horizontal: 80.w)),
              200.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

class _VerticalText extends StatelessWidget {
  const _VerticalText({
    Key? key,
    required this.top,
    required this.bottom,
  }) : super(key: key);

  final String top;
  final String bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          top,
          style: TextConfigs.kText32_1_700,
        ),
        Text(
          bottom,
          style: TextConfigs.kText28_1_700,
        )
      ],
    );
  }
}
