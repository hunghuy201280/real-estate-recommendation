import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_web/di/dependency_injection.dart';
import 'package:re_web/view_models/home_bloc/home_bloc.dart';

import 'home_detail_cubit/home_detail_cubit.dart';

class BlocWrapper extends StatelessWidget {
  const BlocWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt.get<HomeBloc>()..add(const HomeInitialized()),
        ),
        BlocProvider(
          create: (BuildContext context) {
            return HomeDetailCubit();
          },
        )
      ],
      child: child,
    );
  }
}
