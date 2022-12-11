import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/utils/state_status.dart';
import 'package:re_web/view_models/home_bloc/home_bloc.dart';
import 'package:re_web/views/home_screen/widgets/horizontal_house_list_view.dart';

class TopHouses extends StatelessWidget {
  const TopHouses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Popular",
          style: TextConfigs.kText48_2,
        ).withPadding(
          EdgeInsets.only(left: 80.w, top: 40.w, bottom: 16.w),
        ),
        Text(
          "Listing what other people like",
          style: TextConfigs.kText32_2,
        ).withPadding(
          EdgeInsets.only(left: 80.w, bottom: 32.w),
        ),
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return HorizontalHouseListView(
              houses: state.topHouses,
              isLoading: state.status is Loading,
            );
          },
        ).withPadding(EdgeInsets.symmetric(horizontal: 80.w)),
        64.verticalSpace,
      ],
    );
  }
}
