import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:sundevs/data/comic_repository.dart';
import 'package:sundevs/data/utils/api_data_responses.dart';
import 'package:sundevs/data/utils/details_api_response.dart';

import '../mock/all_data_mock.dart';
import 'comic_repository_test.mocks.dart';

@GenerateMocks([ComicRepository])
void main() {
  late MockComicRepository repo;

  setUp(() {
    repo = MockComicRepository();
  });

  group('WHEN fetching Data', () {
    test('THEN returns ApiResponse', () async {
      // Use Mockito to return a successful response
      when(repo.fetchIssues()).thenAnswer((_) async =>
          Future.delayed(const Duration(milliseconds: 200)).then((_) {
            return ApiResponse.fromJson(bodyMock);
          }));

      expect(await repo.fetchIssues(), isA<ApiResponse>());
    });

    test('THEN returns Details', () async {
      // Use Mockito to return a successful response
      when(repo.fetchIssueDetail(any)).thenAnswer((_) async =>
          Future.delayed(const Duration(milliseconds: 200)).then((_) {
            return DetailsApiResponse.fromJson(detailsMock);
          }));

      expect(await repo.fetchIssueDetail('String'), isA<DetailsApiResponse>());
    });
  });
}
