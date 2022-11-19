import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/views/home_detail_screen/widgets/home_info.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _Images(
          urls: [
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
            "https://img.onmanorama.com/content/dam/mm/en/lifestyle/decor/images/2022/1/27/4-cent-trivandrum-home-view.jpg",
          ],
        ),
        HomeInfo(
          title: [
            "Room quantity",
            "Has elevator",
            "Has storage",
            "Unit floor",
            "Property age",
          ],
          values: [
            "5",
            "Yes",
            "Yes",
            "5",
            "5",
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
              return Material(
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
