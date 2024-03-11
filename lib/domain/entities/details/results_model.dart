import 'package:sundevs/domain/entities/details/character_model.dart';
import 'package:sundevs/domain/entities/details/concept_model.dart';
import 'package:sundevs/domain/entities/details/image_model.dart';
import 'package:sundevs/domain/entities/details/location_model.dart';
import 'package:sundevs/domain/entities/details/person_model.dart';
import 'package:sundevs/domain/entities/details/volume_model.dart';

class ResultsModel {
  List<dynamic>? aliases;
  String? apiDetailUrl;
  List<ImageModel>? associatedImages;
  List<CharacterModel>? characterCredits;
  List<dynamic>? characterDiedIn;
  List<ConceptModel>? conceptCredits;
  String? coverDate;
  String? dateAdded;
  String? dateLastUpdated;
  String? deck;
  String? description;
  String? firstAppearanceCharacters;
  String? firstAppearanceConcepts;
  String? firstAppearanceLocations;
  String? firstAppearanceObjects;
  String? firstAppearanceStoryarcs;
  String? firstAppearanceTeams;
  bool? hasStaffReview;
  int? id;
  ImageModel? image;
  String? issueNumber;
  List<LocationModel>? locationCredits;
  String? name;
  List<dynamic>? objectCredits;
  List<PersonModel>? personCredits;
  String? siteDetailUrl;
  String? storeDate;
  List<dynamic>? storyArcCredits;
  List<dynamic>? teamCredits;
  List<dynamic>? teamDisbandedIn;
  VolumeModel? volume;

  ResultsModel({
    this.aliases,
    this.apiDetailUrl,
    this.associatedImages,
    this.characterCredits,
    this.characterDiedIn,
    this.conceptCredits,
    this.coverDate,
    this.dateAdded,
    this.dateLastUpdated,
    this.deck,
    this.description,
    this.firstAppearanceCharacters,
    this.firstAppearanceConcepts,
    this.firstAppearanceLocations,
    this.firstAppearanceObjects,
    this.firstAppearanceStoryarcs,
    this.firstAppearanceTeams,
    this.hasStaffReview,
    this.id,
    this.image,
    this.issueNumber,
    this.locationCredits,
    this.name,
    this.objectCredits,
    this.personCredits,
    this.siteDetailUrl,
    this.storeDate,
    this.storyArcCredits,
    this.teamCredits,
    this.teamDisbandedIn,
    this.volume,
  });

  factory ResultsModel.fromJson(Map<String, dynamic> json) {
    var imageList = json['associated_images'] as List<dynamic>;
    var personList = json['person_credits'] as List<dynamic>;
    var locationList = json['location_credits'] as List<dynamic>;
    var conceptList = json['concept_credits'] as List<dynamic>;
    var characterList = json['character_credits'] as List<dynamic>;
    var volumeData = json['volume'] as Map<String, dynamic>;

    return ResultsModel(
      aliases: json['aliases'],
      apiDetailUrl: json['api_detail_url'],
      associatedImages: imageList.map((e) => ImageModel.fromJson(e)).toList(),
      characterCredits:
          characterList.map((e) => CharacterModel.fromJson(e)).toList(),
      characterDiedIn: json['character_died_in'],
      conceptCredits: conceptList.map((e) => ConceptModel.fromJson(e)).toList(),
      coverDate: json['cover_date'],
      dateAdded: json['date_added'],
      dateLastUpdated: json['date_last_updated'],
      deck: json['deck'],
      description: json['description'],
      firstAppearanceCharacters: json['first_appearance_characters'],
      firstAppearanceConcepts: json['first_appearance_concepts'],
      firstAppearanceLocations: json['first_appearance_locations'],
      firstAppearanceObjects: json['first_appearance_objects'],
      firstAppearanceStoryarcs: json['first_appearance_storyarcs'],
      firstAppearanceTeams: json['first_appearance_teams'],
      hasStaffReview: json['has_staff_review'],
      id: json['id'],
      image: ImageModel.fromJson(json['image']),
      issueNumber: json['issue_number'],
      locationCredits:
          locationList.map((e) => LocationModel.fromJson(e)).toList(),
      name: json['name'],
      objectCredits: json['object_credits'],
      personCredits: personList.map((e) => PersonModel.fromJson(e)).toList(),
      siteDetailUrl: json['site_detail_url'],
      storeDate: json['store_date'],
      storyArcCredits: json['story_arc_credits'],
      teamCredits: json['team_credits'],
      teamDisbandedIn: json['team_disbanded_in'],
      volume: VolumeModel.fromJson(volumeData),
    );
  }
}
