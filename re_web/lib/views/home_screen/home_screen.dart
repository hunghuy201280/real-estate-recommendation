import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/views/home_screen/widgets/home_header.dart';
import 'package:re_web/views/home_screen/widgets/home_item_widget.dart';

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
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Scrollbar(
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
                          return const HomeItemWidget();
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
          ),
          Positioned(
            top: 16.w,
            left: 16.w,
            child: Image.asset("logo_white".assetImage),
          )
        ],
      ),
    );
  }
}
