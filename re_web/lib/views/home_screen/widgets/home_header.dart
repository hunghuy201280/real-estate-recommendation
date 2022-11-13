import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/views/home_screen/widgets/home_search_field.dart';
import 'package:re_web/views/home_screen/widgets/home_slider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1060.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Find your place",
              style: TextConfigs.kText80_1,
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    color: AppColors.kColor2,
                    borderRadius: BorderRadius.circular(4),
                    child: TabBar(
                      unselectedLabelColor: AppColors.kColor1,
                      labelColor: AppColors.kColor2,
                      indicator: RectangularIndicator(
                        color: AppColors.kColor1,
                      ),
                      isScrollable: true,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      tabs: const [
                        Tab(
                          text: "Buy",
                        ),
                        Tab(
                          text: "Rent",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: AppColors.kColor1,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const HomeSearchField(),
                        Row(
                          children: <Widget>[
                            const HomeSlider(
                              min: 1000,
                              max: 10000,
                              initialStart: 1200,
                              initialEnd: 2000,
                            ),
                            const HomeSlider(
                              min: 50,
                              max: 2000,
                              initialStart: 75,
                              initialEnd: 125,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
