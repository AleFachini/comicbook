class PersonModel {
  String? apiDetailUrl;
  int? id;
  String? name;
  String? siteDetailUrl;
  String? role;

  PersonModel({
    this.apiDetailUrl,
    this.id,
    this.name,
    this.siteDetailUrl,
    this.role,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      apiDetailUrl: json['api_detail_url'],
      id: json['id'],
      name: json['name'],
      siteDetailUrl: json['site_detail_url'],
      role: json['role'],
    );
  }
}
