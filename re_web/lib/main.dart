import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:re_web/view_models/app_bloc/app_bloc.dart';

import 'app.dart';
import 'constants/hive_configs.dart';
import 'di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfigs().initializeHiveConfigs();

  configureDependencies();

  //Avoid invalid type when use with bloc

  //await AppConfigs.initializeApp();
  runApp(
    BlocProvider(
      create: (_) => AppBloc(),
      child: const ReApp(),
    ),
  );
}
