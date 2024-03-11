class AssociatedImages {
  final String originalUrl;
  final int id;
  final String? caption;
  final String imageTags;

  AssociatedImages({
    required this.originalUrl,
    required this.id,
    this.caption,
    required this.imageTags,
  });

  factory AssociatedImages.fromJson(Map<String, dynamic> json) {
    return AssociatedImages(
      originalUrl: json['original_url'],
      id: json['id'],
      caption: json['caption'],
      imageTags: json['image_tags'],
    );
  }
}
