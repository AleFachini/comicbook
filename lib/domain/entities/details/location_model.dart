class LocationModel {
  String? apiDetailUrl;
  int? id;
  String? name;
  String? siteDetailUrl;

  LocationModel({
    this.apiDetailUrl,
    this.id,
    this.name,
    this.siteDetailUrl,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      apiDetailUrl: json['api_detail_url'],
      id: json['id'],
      name: json['name'],
      siteDetailUrl: json['site_detail_url'],
    );
  }
}
