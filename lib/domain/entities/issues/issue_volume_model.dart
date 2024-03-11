class IssueVolume {
  final String apiDetailUrl;
  final int id;
  final String name;
  final String siteDetailUrl;

  IssueVolume({
    required this.apiDetailUrl,
    required this.id,
    required this.name,
    required this.siteDetailUrl,
  });

  factory IssueVolume.fromJson(Map<String, dynamic> json) {
    return IssueVolume(
      apiDetailUrl: json['api_detail_url'],
      id: json['id'],
      name: json['name'],
      siteDetailUrl: json['site_detail_url'],
    );
  }
}
