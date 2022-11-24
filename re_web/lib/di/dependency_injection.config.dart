// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../constants/app_prefs.dart' as _i10;
import '../constants/hive_configs.dart' as _i7;
import '../models/prefs/configspref.dart' as _i6;
import '../models/prefs/walletpref.dart' as _i9;
import '../services/api_remote.dart' as _i3;
import '../services/local/local_provider.dart' as _i13;
import '../services/local/local_repository.dart' as _i11;
import '../services/remote/remote_provider.dart' as _i12;
import '../services/remote/remote_repository.dart' as _i8;
import '../view_models/app_bloc/app_bloc.dart' as _i4;
import 'hive_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  gh.singleton<_i3.ApiRemote>(_i3.ApiRemote());
  gh.singleton<_i4.AppBloc>(_i4.AppBloc());
  gh.factory<_i5.Box<dynamic>>(() => hiveModule.getConfigPrefBox(),
      instanceName: 'CONFIG_BOX');
  gh.factory<_i5.Box<dynamic>>(() => hiveModule.getWalletPrefBox(),
      instanceName: 'WALLET_BOX');
  gh.singleton<_i6.ConfigsPref>(
      _i6.ConfigsPref(box: get<_i5.Box<dynamic>>(instanceName: 'CONFIG_BOX')));
  gh.singleton<_i7.HiveConfigs>(_i7.HiveConfigs());
  gh.singleton<_i8.RemoteRepository>(
      _i8.RemoteRepository(get<_i3.ApiRemote>()));
  gh.singleton<_i9.WalletPref>(
      _i9.WalletPref(box: get<_i5.Box<dynamic>>(instanceName: 'WALLET_BOX')));
  gh.singleton<_i10.AppPref>(_i10.AppPref(
      config: get<_i6.ConfigsPref>(), wallet: get<_i9.WalletPref>()));
  gh.singleton<_i11.LocalRepository>(
      _i11.LocalRepository(appPref: get<_i10.AppPref>()));
  gh.singleton<_i12.RemoteProvider>(
      _i12.RemoteProvider(repo: get<_i8.RemoteRepository>()));
  gh.singleton<_i13.LocalProvider>(
      _i13.LocalProvider(repo: get<_i11.LocalRepository>()));
  return get;
}

class _$HiveModule extends _i14.HiveModule {}
