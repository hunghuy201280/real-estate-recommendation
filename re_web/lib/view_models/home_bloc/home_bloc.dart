import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:re_web/models/house/house.dart';
import 'package:re_web/services/remote/remote_provider.dart';
import 'package:re_web/utils/state_status.dart';
import 'package:re_web/utils/utils.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RemoteProvider remoteProvider;
  HomeBloc(this.remoteProvider) : super(const HomeState()) {
    _mapEventToState();
  }

  void _mapEventToState() {
    on<HomeInitialized>(_homeInitializedToState);
  }

  FutureOr<void> _homeInitializedToState(
      HomeInitialized event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(status: const Loading()));
      final houses = await remoteProvider.getHouses();
      final topHouses = await remoteProvider.getTopHouses();
      emit(
        state.copyWith(
          status: const Idle(),
          recommendedHouses: houses,
          topHouses: topHouses,
        ),
      );
    } on DioError catch (e, trace) {
      emit(state.copyWith(status: const Idle()));

      printLog(this,
          message: "_homeInitializedToState", error: e, trace: trace);
    }
  }
}
