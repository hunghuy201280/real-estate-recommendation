import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:re_web/configs/color_config.dart';
import 'package:re_web/configs/text_config.dart';
import 'package:re_web/utils/extensions.dart';
import 'package:re_web/views/common_widgets/common_button.dart';
import 'package:re_web/views/home_detail_screen/home_detail_screen.dart';
import 'package:re_web/views/home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const id = "/";
  const LoginScreen({Key? key}) : super(key: key);

  static LoginScreen get instance {
    return const LoginScreen();
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kColor1,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 45,
            child: SizedBox(
              width: 398.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "logo_white".assetImage,
                    color: AppColors.kColor2,
                  ),
                  48.verticalSpace,
                  Text(
                    "Welcome Back",
                    style: TextConfigs.kText32_2,
                  ),
                  80.verticalSpace,
                  CommonFormField(
                    hint: "Email",
                    width: 398.w,
                  ),
                  40.verticalSpace,
                  CommonFormField(
                    hint: "Password",
                    obscure: true,
                    width: 398.w,
                  ),
                  40.verticalSpace,
                  SizedBox(
                    width: 398.w,
                    child: CommonButton(
                      title: "Login",
                      onTap: () {
                        context.go(HomeScreen.id);
                      },
                      backgroundColor: AppColors.kColor2,
                      color: AppColors.kColor1,
                      padding: EdgeInsets.symmetric(vertical: 24.w),
                    ),
                  ),
                  40.verticalSpace,
                  SizedBox(
                    width: 398.w,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColors.kColor3,
                          ),
                        ),
                        24.horizontalSpace,
                        Text(
                          "or",
                          style: TextConfigs.kText18_3,
                        ),
                        24.horizontalSpace,
                        const Expanded(
                          child: Divider(
                            color: AppColors.kColor3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  40.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "ic_fb".assetIcon,
                      ),
                      32.horizontalSpace,
                      Image.asset(
                        "ic_gg".assetIcon,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 55,
            child: Material(
              color: AppColors.kColor4,
              borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(24.w)),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: -100.w,
                    child: Image.asset(
                      "login_background".assetImage,
                      height: 768.w,
                      width: 1102.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
