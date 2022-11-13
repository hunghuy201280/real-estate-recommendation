part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(Locale('vi')) Locale locale,
  }) = _AppState;
}
