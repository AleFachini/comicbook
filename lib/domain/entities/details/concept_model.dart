class ConceptModel {
  String? apiDetailUrl;
  int? id;
  String? name;
  String? siteDetailUrl;

  ConceptModel({
    this.apiDetailUrl,
    this.id,
    this.name,
    this.siteDetailUrl,
  });

  factory ConceptModel.fromJson(Map<String, dynamic> json) {
    return ConceptModel(
      apiDetailUrl: json['api_detail_url'],
      id: json['id'],
      name: json['name'],
      siteDetailUrl: json['site_detail_url'],
    );
  }
}
