part of '../details_bloc.dart';

sealed class DetailState {}

class DetailsInitial extends DetailState {}

class DetailsLoading extends DetailState {}

class DetailsLoaded extends DetailState {
  final ResultsModel details;

  DetailsLoaded({required this.details});
}
