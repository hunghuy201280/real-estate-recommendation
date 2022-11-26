import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/models/house/house.dart';
import 'package:re_web/utils/loader.dart';
import 'package:re_web/views/home_screen/widgets/home_item_widget.dart';

class HorizontalHouseListView extends StatefulWidget {
  const HorizontalHouseListView({
    Key? key,
    required this.houses,
    required this.isLoading,
  }) : super(key: key);

  final bool isLoading;
  final List<House> houses;

  @override
  State<HorizontalHouseListView> createState() =>
      _HorizontalHouseListViewState();
}

class _HorizontalHouseListViewState extends State<HorizontalHouseListView> {
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return SizedBox(
        height: 377.w,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Loader(width: 536.w, height: 377.w, radius: 4);
          },
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) {
            return 76.horizontalSpace;
          },
          itemCount: 10,
        ),
      );
    }
    return SizedBox(
      height: 377.w,
      child: ListView.separated(
        controller: scrollController,
        itemBuilder: (context, index) {
          return HomeItemWidget(
            item: widget.houses[index],
          );
        },
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return 76.horizontalSpace;
        },
        itemCount: widget.houses.length,
      ),
    );
  }
}
