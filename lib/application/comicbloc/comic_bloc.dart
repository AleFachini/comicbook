import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sundevs/data/comic_repository.dart';
import 'package:sundevs/data/utils/api_data_responses.dart';
import 'package:sundevs/data/utils/common_constants.dart';
import 'package:sundevs/domain/entities/details/results_model.dart';
import 'package:sundevs/domain/entities/issues/comic_issue_model.dart';

part 'events/comic_events.dart';
part 'states/comic_states.dart';

class ComicBloc extends Bloc<ComicsEvent, ComicsState> {
  final ComicRepository comicRepository;
  late final ApiResponse _comicResponse;
  late final List<ComicIssue> _comicsList;
  List<ComicIssue>? _currentList;
  List<ComicIssue> get currentList => _currentList ?? <ComicIssue>[];
  ResultsModel? _currentDetails;
  ResultsModel get currentDetails => _currentDetails ?? ResultsModel();
  String layout = CommonConstants.listLayout;

  final _comicsStreamController =
      StreamController<List<ComicIssue>>.broadcast();
  Stream<List<ComicIssue>> get comicsListStream =>
      _comicsStreamController.stream;

  ComicBloc(this.comicRepository) : super(ComicsInitial()) {
    on<ComicsLoadingEvent>((event, emit) => emit(ComicsLoading()));
    on<ComicsLoadedEvent>(
        (event, emit) => emit(ComicsLoaded(issues: currentList)));
    on<ToggleLayoutEvent>(
        (event, emit) => emit(ComicsLoaded(issues: currentList)));
    initialize();
  }

  void initialize() async {
    _comicResponse = await comicRepository.fetchIssues();
    _comicsList = _comicResponse.results;
    _comicsStreamController.add(_comicsList);
    _currentList = _comicsList;
  }

  void toggleLayout() async {
    layout = layout == CommonConstants.listLayout
        ? CommonConstants.gridLayout
        : CommonConstants.listLayout;
    _comicsStreamController.add(_currentList!);
    super.add(ToggleLayoutEvent());
  }

  void dispose() {
    _comicsStreamController.close();
  }
}
