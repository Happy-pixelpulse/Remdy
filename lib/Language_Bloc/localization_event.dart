part of 'localization_bloc.dart';

abstract class LocalizationEvent {}

class ChangeLanguageEvent extends LocalizationEvent {
  final Locale locale;
  ChangeLanguageEvent(this.locale);
}
