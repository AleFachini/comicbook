import 'package:sundevs/domain/entities/issues/associated_image_model.dart';
import 'package:sundevs/domain/entities/issues/issue_image_model.dart';
import 'package:sundevs/domain/entities/issues/issue_volume_model.dart';

class ComicIssue {
  final List<dynamic>? aliases;
  final String apiDetailUrl;
  final String coverDate;
  final String dateAdded;
  final String dateLastUpdated;
  final String? deck;
  final String? description;
  final bool hasStaffReview;
  final int id;
  final IssueImage image;
  final List<AssociatedImages> associatedImages;
  final String issueNumber;
  final String? name;
  final String siteDetailUrl;
  final DateTime? storeDate;
  final IssueVolume volume;

  ComicIssue({
    this.aliases,
    required this.apiDetailUrl,
    required this.coverDate,
    required this.dateAdded,
    required this.dateLastUpdated,
    this.deck,
    this.description,
    required this.hasStaffReview,
    required this.id,
    required this.image,
    required this.associatedImages,
    required this.issueNumber,
    this.name,
    required this.siteDetailUrl,
    this.storeDate,
    required this.volume,
  });

  factory ComicIssue.fromJson(Map<String, dynamic> json) {
    var imagesList = json['associated_images'] as List<dynamic>;
    List<AssociatedImages> images = imagesList
        .map((imageJson) => AssociatedImages.fromJson(imageJson))
        .toList();

    return ComicIssue(
      aliases: json['aliases'],
      apiDetailUrl: json['api_detail_url'],
      coverDate: json['cover_date'],
      dateAdded: json['date_added'],
      dateLastUpdated: json['date_last_updated'],
      deck: json['deck'],
      description: json['description'],
      hasStaffReview: json['has_staff_review'],
      id: json['id'],
      image: IssueImage.fromJson(json['image']),
      associatedImages: images,
      issueNumber: json['issue_number'],
      name: json['name'],
      siteDetailUrl: json['site_detail_url'],
      storeDate: json['store_date'] != null
          ? DateTime.parse(json['store_date'])
          : null,
      volume: IssueVolume.fromJson(json['volume']),
    );
  }
}
