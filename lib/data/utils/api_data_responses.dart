import 'package:sundevs/domain/entities/issues/comic_issue_model.dart';

class ApiResponse {
  final String error;
  final int limit;
  final int offset;
  final int numberOfPageResults;
  final int numberOfTotalResults;
  final int statusCode;
  final List<ComicIssue> results;
  final String version;

  ApiResponse({
    required this.error,
    required this.limit,
    required this.offset,
    required this.numberOfPageResults,
    required this.numberOfTotalResults,
    required this.statusCode,
    required this.results,
    required this.version,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    var resultsList = json['results'] as List<dynamic>;
    List<ComicIssue> issues =
        resultsList.map((issueJson) => ComicIssue.fromJson(issueJson)).toList();

    return ApiResponse(
      error: json['error'],
      limit: json['limit'],
      offset: json['offset'],
      numberOfPageResults: json['number_of_page_results'],
      numberOfTotalResults: json['number_of_total_results'],
      statusCode: json['status_code'],
      results: issues,
      version: json['version'],
    );
  }
}
