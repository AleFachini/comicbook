class ImageModel {
  String? iconUrl;
  String? mediumUrl;
  String? screenUrl;
  String? screenLargeUrl;
  String? smallUrl;
  String? superUrl;
  String? thumbUrl;
  String? tinyUrl;
  String? originalUrl;
  String? imageTags;

  ImageModel({
    this.iconUrl,
    this.mediumUrl,
    this.screenUrl,
    this.screenLargeUrl,
    this.smallUrl,
    this.superUrl,
    this.thumbUrl,
    this.tinyUrl,
    this.originalUrl,
    this.imageTags,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      iconUrl: json['icon_url'],
      mediumUrl: json['medium_url'],
      screenUrl: json['screen_url'],
      screenLargeUrl: json['screen_large_url'],
      smallUrl: json['small_url'],
      superUrl: json['super_url'],
      thumbUrl: json['thumb_url'],
      tinyUrl: json['tiny_url'],
      originalUrl: json['original_url'],
      imageTags: json['image_tags'],
    );
  }
}
