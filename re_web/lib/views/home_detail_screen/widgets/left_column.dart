import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/view_models/home_detail_cubit/home_detail_cubit.dart';
import 'package:re_web/views/home_detail_screen/widgets/home_info.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final item = context.read<HomeDetailCubit>().state!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Images(
          urls: [
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
          ],
        ),
        64.verticalSpace,
        HomeInfo(
          title: const [
            "Room quantity",
            "Has elevator",
            "Has storage",
            "Unit floor",
            "Property age",
          ],
          values: [
            item.roomQty.toString(),
            item.hasElevator ? "Yes" : "No",
            item.hasStorageArea ? "Yes" : "No",
            (item.unitFloor == 0 ? item.buildingFloorCount : item.unitFloor)
                .toString(),
            item.propertyAge.toString(),
          ],
        ),
      ],
    );
  }
}

class _Images extends StatefulWidget {
  const _Images({Key? key, required this.urls}) : super(key: key);
  final List<String> urls;
  @override
  State<_Images> createState() => _ImagesState();
}

class _ImagesState extends State<_Images> {
  int selectedImageIndex = 0;
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final item = context.read<HomeDetailCubit>().state!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.fromSize(
          size: Size(871.w, 609.w),
          child: CarouselSlider.builder(
            carouselController: controller,
            options: CarouselOptions(
              aspectRatio: 871.w / 609.w,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              onPageChanged: (page, _) {
                selectedImageIndex = page;
                setState(() {});
              },
              scrollDirection: Axis.horizontal,
            ),
            itemCount: widget.urls.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Stack(
                children: [
                  Positioned.fill(
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.hardEdge,
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          AppColors.kColor2.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                        child: Image.network(
                          widget.urls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  if (item.monthlyRent != 0)
                    Positioned(
                      top: 24,
                      left: 24,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.kColor2,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.w),
                        child: Text(
                          "For rent",
                          style: TextConfigs.kText20_1,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
        16.verticalSpace,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: widget.urls
              .mapIndexed(
                (i, e) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImageIndex = i;
                    });
                    controller.animateToPage(i);
                  },
                  child: AnimatedScale(
                    scale: selectedImageIndex == i ? 1.2 : 1,
                    duration: const Duration(milliseconds: 200),
                    child: Material(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(8.w),
                      child: Image.network(
                        e,
                        fit: BoxFit.cover,
                        width: 144.w,
                        height: 101.w,
                      ),
                    ).withPadding(EdgeInsets.only(right: 24.w)),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
