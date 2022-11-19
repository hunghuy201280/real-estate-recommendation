import 'package:flutter/material.dart';
import 'package:re_web/configs/text_config.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({Key? key, required this.title, required this.values})
      : super(key: key);

  final List<String> title;
  final List<String> values;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: title
              .map(
                (e) => Text(
                  e,
                  style: TextConfigs.kText24_3,
                ),
              )
              .toList(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: values
              .map(
                (e) => Text(
                  e,
                  style: TextConfigs.kText24_2,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
