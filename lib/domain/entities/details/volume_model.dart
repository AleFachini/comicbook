class VolumeModel {
  String? apiDetailUrl;
  int? id;
  String? name;
  String? siteDetailUrl;

  VolumeModel({
    this.apiDetailUrl,
    this.id,
    this.name,
    this.siteDetailUrl,
  });

  factory VolumeModel.fromJson(Map<String, dynamic> json) {
    return VolumeModel(
      apiDetailUrl: json['api_detail_url'],
      id: json['id'],
      name: json['name'],
      siteDetailUrl: json['site_detail_url'],
    );
  }
}
