import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sundevs/data/comic_repository.dart';
import 'package:sundevs/data/utils/details_api_response.dart';
import 'package:sundevs/domain/entities/details/results_model.dart';

part 'events/details_event.dart';
part 'states/detail_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailState> {
  final ComicRepository comicRepository;
  late DetailsApiResponse _detailsApiResponse;
  late ResultsModel _details;
  ResultsModel get details => _details;

  late final String _apiDetailsUrl;
  String get apiDetailsUrl => _apiDetailsUrl;
  set setApiDetailsUrl(String value) => _apiDetailsUrl = value;

  final _detailsStreamController = StreamController<ResultsModel>.broadcast();
  Stream<ResultsModel> get detailStream => _detailsStreamController.stream;

  DetailsBloc(this.comicRepository, this._apiDetailsUrl)
      : super(DetailsInitial()) {
    on<DetailsLoadingEvent>((event, emit) => emit(DetailsLoading()));
    on<DetailsLoadedEvent>(
        (event, emit) => emit(DetailsLoaded(details: details)));
  }

  Future<void> initialize(String? url) async {
    _detailsApiResponse =
        await comicRepository.fetchIssueDetail(url ?? apiDetailsUrl);
    _details = _detailsApiResponse.results;
    _detailsStreamController.add(_details);
    add(DetailsLoadedEvent());
  }

  void dispose() {
    _detailsStreamController.close();
  }
}
