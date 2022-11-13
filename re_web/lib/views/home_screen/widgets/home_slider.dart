import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider(
      {Key? key,
      required this.min,
      required this.max,
      required this.initialStart,
      required this.initialEnd})
      : super(key: key);

  final double min, max, initialStart, initialEnd;
  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  late RangeValues rangeValues;

  @override
  void initState() {
    super.initState();
    rangeValues = RangeValues(widget.initialStart, widget.initialEnd);
  }

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: rangeValues,
      min: widget.min,
      max: widget.max,
      onChanged: (value) {
        setState(
          () {
            rangeValues = value;
          },
        );
      },
    );
  }
}
