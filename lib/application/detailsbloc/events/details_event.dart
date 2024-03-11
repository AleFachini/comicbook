part of '../details_bloc.dart';

sealed class DetailsEvent {}

final class DetailsLoadingEvent extends DetailsEvent {}

final class DetailsLoadedEvent extends DetailsEvent {}
