part of '../comic_bloc.dart';

sealed class ComicsEvent {}

final class ComicsLoadingEvent extends ComicsEvent {}

final class ComicsLoadedEvent extends ComicsEvent {}

final class ToggleLayoutEvent extends ComicsEvent {}
