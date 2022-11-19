import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({Key? key, required this.title, required this.values})
      : super(key: key);

  final List<String> title;
  final List<String> values;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 240.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: title
                .map(
                  (e) => Text(
                    e,
                    style: TextConfigs.kText24_3,
                  ).withPadding(EdgeInsets.only(bottom: 24.w)),
                )
                .toList(),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: values
              .map(
                (e) => Text(
                  e,
                  style: TextConfigs.kText24_2,
                ).withPadding(EdgeInsets.only(bottom: 24.w)),
              )
              .toList(),
        ),
      ],
    );
  }
}
