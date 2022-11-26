import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/constants/events_type.dart';
import 'package:re_web/di/dependency_injection.dart';
import 'package:re_web/models/prefs/configspref.dart';
import 'package:re_web/services/remote/remote_provider.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/view_models/home_detail_cubit/home_detail_cubit.dart';
import 'package:re_web/views/common_widgets/common_button.dart';
import 'package:re_web/views/common_widgets/common_form_field.dart';
import 'package:re_web/views/home_detail_screen/widgets/left_column.dart';
import 'package:re_web/views/home_screen/widgets/home_item_widget.dart';
import 'package:re_web/views/login_screen/login_screen.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({Key? key}) : super(key: key);
  static const id = "/home-detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Header(),
              16.verticalSpace,
              const _TopRow(),
              16.verticalSpace,
              const _ImageAndContact(),
              64.verticalSpace,
              Text(
                "In case the content of the posting is found to be incorrect, please notify and provide information to the Administration Board at Hotline 19001881 for the fastest and most timely support.",
                style: TextConfigs.kText24_2,
              ).withPadding(EdgeInsets.symmetric(horizontal: 224.w)),
              64.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

class _ImageAndContact extends StatelessWidget {
  const _ImageAndContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = context.read<HomeDetailCubit>().state!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LeftColumn(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "CONTACT",
                style: TextConfigs.kText24_2_600,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Name',
                width: 398.w,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Email',
                width: 398.w,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Phone',
                width: 398.w,
              ),
              24.verticalSpace,
              CommonFormField(
                hint: 'Message',
                width: 398.w,
                maxLines: 5,
              ),
              24.verticalSpace,
              SizedBox(
                width: 398.w,
                child: CommonButton(
                  onTap: () {
                    getIt.get<RemoteProvider>().logEvent(
                          eventName: EventsType.kMeetingRequestNew,
                          itemId: item.itemId,
                        );
                  },
                  title: "SEND",
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: AppColors.kColor2,
                  color: AppColors.kColor1,
                ),
              )
            ],
          ),
        )
      ],
    ).withPadding(EdgeInsets.symmetric(horizontal: 224.w));
  }
}

class _TopRow extends StatelessWidget {
  const _TopRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final item = context.read<HomeDetailCubit>().state!;
    final price =
        ((item.monthlyRent > 0 ? item.monthlyRent : item.deposit) / 100);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Real estate name",
              style: TextConfigs.kText36_2_600,
            ).withPadding(EdgeInsets.only(left: 224.w)),
            8.verticalSpace,
            Text(
              item.itemId,
              style: TextConfigs.kText24_3_700,
            ).withPadding(EdgeInsets.only(left: 224.w)),
          ],
        ),
        Row(
          children: [
            24.horizontalSpace,
            Text(
              "\$${price.decimalFormat}",
              style: TextConfigs.kText36_2,
            ),
            Container(
              height: 50.w,
              width: 3.w,
              color: AppColors.kColor2,
              margin: EdgeInsets.symmetric(horizontal: 32.w),
            ),
            VerticalText(
              top: '${item.unitArea}',
              bottom: "m2",
              color: AppColors.kColor2,
              bottomColor: AppColors.kColor3,
            ),
            Container(
              height: 50.w,
              width: 3.w,
              color: AppColors.kColor2,
              margin: EdgeInsets.symmetric(horizontal: 32.w),
            ),
            VerticalText(
              top: (price / max(item.unitArea, 1)).toStringAsFixed(2),
              bottom: "\$/m2",
              color: AppColors.kColor2,
              bottomColor: AppColors.kColor3,
            ),
            24.horizontalSpace
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "ic_danger".assetIcon,
              width: 24.w,
              height: 24.w,
            ),
            60.horizontalSpace,
            Image.asset(
              "ic_send".assetIcon,
              width: 24.w,
              height: 24.w,
            ),
            60.horizontalSpace,
            Image.asset(
              "ic_heart".assetIcon,
              width: 24.w,
              height: 24.w,
            ),
            224.horizontalSpace,
          ],
        )
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.kColor2,
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            "logo_white".assetImage,
            color: AppColors.kColor2,
          ).withPadding(EdgeInsets.all(16.w)),
          const Spacer(),
          CommonButton(
            onTap: () {
              getIt.get<ConfigsPref>().setUserId(null);
              GoRouter.of(context).replace(LoginScreen.id);
            },
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            title: 'Log out',
            backgroundColor: AppColors.kColor2,
            color: AppColors.kColor1,
          ),
          224.horizontalSpace,
        ],
      ),
    );
  }
}
