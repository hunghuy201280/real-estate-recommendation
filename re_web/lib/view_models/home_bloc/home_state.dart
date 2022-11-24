part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<House> houses,
    @Default(Idle()) StateStatus status,
  }) = _HomeState;
}
