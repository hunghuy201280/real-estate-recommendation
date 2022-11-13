part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.localeChanged(Locale locale) = AppLocaleChanged;
}
