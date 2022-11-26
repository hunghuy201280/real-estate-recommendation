import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/views/home_screen/widgets/home_header.dart';
import 'package:re_web/views/home_screen/widgets/home_recommendation.dart';
import 'package:re_web/views/home_screen/widgets/top_houses.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home";

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
                    const TopHouses(),
                    const HomeRecommendation(),
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
