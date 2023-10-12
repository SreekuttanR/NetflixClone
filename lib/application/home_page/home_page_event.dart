part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
const factory HomePageEvent.getComingSoon() = _GetComingSoon;
    const factory HomePageEvent.getEvorionesWatching() = _GetEvorionesWatching;
    }