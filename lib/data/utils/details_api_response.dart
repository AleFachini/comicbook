import 'package:sundevs/domain/entities/details/results_model.dart';

class DetailsApiResponse {
  String error;
  int limit;
  int offset;
  int numberOfPageResults;
  int numberOfTotalResults;
  int statusCode;
  ResultsModel results;
  String version;

  DetailsApiResponse({
    required this.error,
    required this.limit,
    required this.offset,
    required this.numberOfPageResults,
    required this.numberOfTotalResults,
    required this.statusCode,
    required this.results,
    required this.version,
  });

  factory DetailsApiResponse.fromJson(Map<String, dynamic> json) {
    return DetailsApiResponse(
      error: json['error'],
      limit: json['limit'],
      offset: json['offset'],
      numberOfPageResults: json['number_of_page_results'],
      numberOfTotalResults: json['number_of_total_results'],
      statusCode: json['status_code'],
      results: ResultsModel.fromJson(json['results']),
      version: json['version'],
    );
  }
}
