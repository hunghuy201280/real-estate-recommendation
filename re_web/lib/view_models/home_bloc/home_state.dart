part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<House> recommendedHouses,
    @Default([]) List<House> topHouses,
    @Default(Idle()) StateStatus status,
  }) = _HomeState;
}
