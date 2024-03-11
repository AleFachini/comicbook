import 'package:flutter_test/flutter_test.dart';
import 'package:sundevs/application/detailsbloc/details_bloc.dart';
import 'package:sundevs/data/utils/api_data_responses.dart';
import 'package:sundevs/application/comicbloc/comic_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:sundevs/data/utils/details_api_response.dart';
import 'package:sundevs/domain/entities/details/results_model.dart';

import '../../data/comic_repository_test.mocks.dart';
import '../../mock/all_data_mock.dart';

void main() {
  late ComicBloc bloc;
  late MockComicRepository repo;
  late DetailsBloc dBloc;

  setUp(() {
    repo = MockComicRepository();
  });

  group('WHEN Testing for Blocs', () {
    test('THEN Initialize Comic Bloc', () async {
      // Use Mockito to return a successful response
      when(repo.fetchIssues()).thenAnswer((_) async =>
          Future.delayed(const Duration(milliseconds: 200)).then((_) {
            return ApiResponse.fromJson(bodyMock);
          }));

      bloc = ComicBloc(repo);

      //This awaits more than the delay inside the repo!
      await Future.delayed(const Duration(milliseconds: 3500), () {});

      assert(bloc.currentList.isNotEmpty);
    });

    test('THEN Initialize Details Bloc', () async {
      // Use Mockito to return a successful response
      when(repo.fetchIssueDetail(any)).thenAnswer((_) async =>
          Future.delayed(const Duration(milliseconds: 200)).then((_) {
            return DetailsApiResponse.fromJson(detailsMock);
          }));

      dBloc = DetailsBloc(repo, '');

      await dBloc.initialize('');

      //This awaits more than the delay inside the repo!
      await Future.delayed(const Duration(milliseconds: 3500), () {});

      expect(dBloc.details, isA<ResultsModel>());
    });
  });
}
