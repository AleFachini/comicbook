part of '../comic_bloc.dart';

sealed class ComicsState {}

class ComicsInitial extends ComicsState {}

class ComicsLoading extends ComicsState {}

class ComicsLoaded extends ComicsState {
  final List<ComicIssue> issues;

  ComicsLoaded({required this.issues});
}
