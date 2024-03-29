//This should be used to Test json.decode,

import 'package:mockito/mockito.dart';

final bodyMock = {
  "error": "OK",
  "limit": 100,
  "offset": 0,
  "number_of_page_results": 100,
  "number_of_total_results": 995050,
  "status_code": 1,
  "results": [
    {
      "aliases": null,
      "api_detail_url": "https://comicvine.gamespot.com/api/issue/4000-6/",
      "cover_date": "1952-10-01",
      "date_added": "2008-06-06 11:10:16",
      "date_last_updated": "2022-07-11 23:51:22",
      "deck": null,
      "description":
          "<p>The horrors of:</p><p>- Lost race!</p><p>- The man germ!</p><p>- Man in the hood!</p><p>- The things!</p><p>-Stories behind the stars, featuring the legendary battle between Hercules, Hydra and Iolaus!</p><p>Plus, two page long prose-stories.</p>",
      "has_staff_review": false,
      "id": 6,
      "image": {
        "icon_url":
            "https://comicvine.gamespot.com/a/uploads/square_avatar/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "medium_url":
            "https://comicvine.gamespot.com/a/uploads/scale_medium/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "screen_url":
            "https://comicvine.gamespot.com/a/uploads/screen_medium/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "screen_large_url":
            "https://comicvine.gamespot.com/a/uploads/screen_kubrick/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "small_url":
            "https://comicvine.gamespot.com/a/uploads/scale_small/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "super_url":
            "https://comicvine.gamespot.com/a/uploads/scale_large/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "thumb_url":
            "https://comicvine.gamespot.com/a/uploads/scale_avatar/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "tiny_url":
            "https://comicvine.gamespot.com/a/uploads/square_mini/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "original_url":
            "https://comicvine.gamespot.com/a/uploads/original/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
        "image_tags": "All Images"
      },
      "associated_images": [
        {
          "original_url":
              "https://comicvine.gamespot.com/a/uploads/original/0/4/7-1487-6-1-chamber-of-chills.jpg",
          "id": 7,
          "caption": null,
          "image_tags": "All Images"
        }
      ],
      "issue_number": "13",
      "name": "The Lost Race",
      "site_detail_url":
          "https://comicvine.gamespot.com/chamber-of-chills-magazine-13-the-lost-race/4000-6/",
      "store_date": null,
      "volume": {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/volume/4050-1487/",
        "id": 1487,
        "name": "Chamber of Chills Magazine",
        "site_detail_url":
            "https://comicvine.gamespot.com/chamber-of-chills-magazine/4050-1487/"
      }
    },
    {
      "aliases": null,
      "api_detail_url": "https://comicvine.gamespot.com/api/issue/4000-7/",
      "cover_date": "1952-10-01",
      "date_added": "2008-06-06 11:10:16",
      "date_last_updated": "2022-07-11 11:31:27",
      "deck": null,
      "description": null,
      "has_staff_review": false,
      "id": 7,
      "image": {
        "icon_url":
            "https://comicvine.gamespot.com/a/uploads/square_avatar/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "medium_url":
            "https://comicvine.gamespot.com/a/uploads/scale_medium/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "screen_url":
            "https://comicvine.gamespot.com/a/uploads/screen_medium/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "screen_large_url":
            "https://comicvine.gamespot.com/a/uploads/screen_kubrick/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "small_url":
            "https://comicvine.gamespot.com/a/uploads/scale_small/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "super_url":
            "https://comicvine.gamespot.com/a/uploads/scale_large/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "thumb_url":
            "https://comicvine.gamespot.com/a/uploads/scale_avatar/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "tiny_url":
            "https://comicvine.gamespot.com/a/uploads/square_mini/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "original_url":
            "https://comicvine.gamespot.com/a/uploads/original/0/4/8-1488-7-1-fighting-fronts-.jpg",
        "image_tags": "All Images"
      },
      "associated_images": [],
      "issue_number": "3",
      "name": null,
      "site_detail_url":
          "https://comicvine.gamespot.com/fighting-fronts-3/4000-7/",
      "store_date": null,
      "volume": {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/volume/4050-1488/",
        "id": 1488,
        "name": "Fighting Fronts!",
        "site_detail_url":
            "https://comicvine.gamespot.com/fighting-fronts/4050-1488/"
      }
    },
    {
      "aliases": null,
      "api_detail_url": "https://comicvine.gamespot.com/api/issue/4000-8/",
      "cover_date": "1952-10-31",
      "date_added": "2008-06-06 11:10:16",
      "date_last_updated": "2017-03-13 08:55:38",
      "deck": null,
      "description": null,
      "has_staff_review": false,
      "id": 8,
      "image": {
        "icon_url":
            "https://comicvine.gamespot.com/a/uploads/square_avatar/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "medium_url":
            "https://comicvine.gamespot.com/a/uploads/scale_medium/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "screen_url":
            "https://comicvine.gamespot.com/a/uploads/screen_medium/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "screen_large_url":
            "https://comicvine.gamespot.com/a/uploads/screen_kubrick/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "small_url":
            "https://comicvine.gamespot.com/a/uploads/scale_small/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "super_url":
            "https://comicvine.gamespot.com/a/uploads/scale_large/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "thumb_url":
            "https://comicvine.gamespot.com/a/uploads/scale_avatar/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "tiny_url":
            "https://comicvine.gamespot.com/a/uploads/square_mini/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "original_url":
            "https://comicvine.gamespot.com/a/uploads/original/0/4/9-1489-8-1-tomb-of-terror.jpg",
        "image_tags": "All Images"
      },
      "associated_images": [],
      "issue_number": "5",
      "name": null,
      "site_detail_url":
          "https://comicvine.gamespot.com/tomb-of-terror-5/4000-8/",
      "store_date": null,
      "volume": {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/volume/4050-1489/",
        "id": 1489,
        "name": "Tomb of Terror",
        "site_detail_url":
            "https://comicvine.gamespot.com/tomb-of-terror/4050-1489/"
      }
    },
  ],
  "version": "111"
};

final detailsMock = {
  "error": "OK",
  "limit": 1,
  "offset": 0,
  "number_of_page_results": 1,
  "number_of_total_results": 1,
  "status_code": 1,
  "results": {
    "aliases": null,
    "api_detail_url": "https://comicvine.gamespot.com/api/issue/4000-6/",
    "associated_images": [
      {
        "original_url":
            "https://comicvine.gamespot.com/a/uploads/original/0/4/7-1487-6-1-chamber-of-chills.jpg",
        "id": 7,
        "caption": null,
        "image_tags": "All Images"
      }
    ],
    "character_credits": [
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/character/4005-67267/",
        "id": 67267,
        "name": "Hercules",
        "site_detail_url": "https://comicvine.gamespot.com/hercules/4005-67267/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/character/4005-33899/",
        "id": 33899,
        "name": "The Hydra",
        "site_detail_url":
            "https://comicvine.gamespot.com/the-hydra/4005-33899/"
      }
    ],
    "character_died_in": [],
    "concept_credits": [
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/concept/4015-49312/",
        "id": 49312,
        "name": "Anthology",
        "site_detail_url":
            "https://comicvine.gamespot.com/anthology/4015-49312/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/concept/4015-56121/",
        "id": 56121,
        "name": "Ghost Artist",
        "site_detail_url":
            "https://comicvine.gamespot.com/ghost-artist/4015-56121/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/concept/4015-55876/",
        "id": 55876,
        "name": "Ghosts",
        "site_detail_url": "https://comicvine.gamespot.com/ghosts/4015-55876/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/concept/4015-55820/",
        "id": 55820,
        "name": "Golden Age of Comics",
        "site_detail_url":
            "https://comicvine.gamespot.com/golden-age-of-comics/4015-55820/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/concept/4015-55939/",
        "id": 55939,
        "name": "Horror",
        "site_detail_url": "https://comicvine.gamespot.com/horror/4015-55939/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/concept/4015-56005/",
        "id": 56005,
        "name": "Witches",
        "site_detail_url": "https://comicvine.gamespot.com/witches/4015-56005/"
      }
    ],
    "cover_date": "1952-10-01",
    "date_added": "2008-06-06 11:10:16",
    "date_last_updated": "2022-07-11 23:51:22",
    "deck": null,
    "description":
        "<p>The horrors of:</p><p>- Lost race!</p><p>- The man germ!</p><p>- Man in the hood!</p><p>- The things!</p><p>-Stories behind the stars, featuring the legendary battle between Hercules, Hydra and Iolaus!</p><p>Plus, two page long prose-stories.</p>",
    "first_appearance_characters": null,
    "first_appearance_concepts": null,
    "first_appearance_locations": null,
    "first_appearance_objects": null,
    "first_appearance_storyarcs": null,
    "first_appearance_teams": null,
    "has_staff_review": false,
    "id": 6,
    "image": {
      "icon_url":
          "https://comicvine.gamespot.com/a/uploads/square_avatar/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "medium_url":
          "https://comicvine.gamespot.com/a/uploads/scale_medium/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "screen_url":
          "https://comicvine.gamespot.com/a/uploads/screen_medium/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "screen_large_url":
          "https://comicvine.gamespot.com/a/uploads/screen_kubrick/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "small_url":
          "https://comicvine.gamespot.com/a/uploads/scale_small/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "super_url":
          "https://comicvine.gamespot.com/a/uploads/scale_large/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "thumb_url":
          "https://comicvine.gamespot.com/a/uploads/scale_avatar/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "tiny_url":
          "https://comicvine.gamespot.com/a/uploads/square_mini/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "original_url":
          "https://comicvine.gamespot.com/a/uploads/original/5/58993/2645776-chamber_of_chills__13_cgc_8.5.jpg",
      "image_tags": "All Images"
    },
    "issue_number": "13",
    "location_credits": [
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/location/4020-56944/",
        "id": 56944,
        "name": "Africa",
        "site_detail_url": "https://comicvine.gamespot.com/africa/4020-56944/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/location/4020-55778/",
        "id": 55778,
        "name": "France",
        "site_detail_url": "https://comicvine.gamespot.com/france/4020-55778/"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/location/4020-55847/",
        "id": 55847,
        "name": "Greece",
        "site_detail_url": "https://comicvine.gamespot.com/greece/4020-55847/"
      }
    ],
    "name": "The Lost Race",
    "object_credits": [],
    "person_credits": [
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/person/4040-45932/",
        "id": 45932,
        "name": "Abe Simon",
        "site_detail_url":
            "https://comicvine.gamespot.com/abe-simon/4040-45932/",
        "role": "penciler"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/person/4040-40144/",
        "id": 40144,
        "name": "Al Avison",
        "site_detail_url":
            "https://comicvine.gamespot.com/al-avison/4040-40144/",
        "role": "penciler, inker"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/person/4040-2756/",
        "id": 2756,
        "name": "Bob Powell",
        "site_detail_url":
            "https://comicvine.gamespot.com/bob-powell/4040-2756/",
        "role": "writer, penciler"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/person/4040-40153/",
        "id": 40153,
        "name": "Howard Nostrand",
        "site_detail_url":
            "https://comicvine.gamespot.com/howard-nostrand/4040-40153/",
        "role": "writer, penciler, inker"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/person/4040-44827/",
        "id": 44827,
        "name": "Leon Harvey",
        "site_detail_url":
            "https://comicvine.gamespot.com/leon-harvey/4040-44827/",
        "role": "editor"
      },
      {
        "api_detail_url":
            "https://comicvine.gamespot.com/api/person/4040-40340/",
        "id": 40340,
        "name": "Moe Marcus",
        "site_detail_url":
            "https://comicvine.gamespot.com/moe-marcus/4040-40340/",
        "role": "penciler"
      }
    ],
    "site_detail_url":
        "https://comicvine.gamespot.com/chamber-of-chills-magazine-13-the-lost-race/4000-6/",
    "store_date": null,
    "story_arc_credits": [],
    "team_credits": [],
    "team_disbanded_in": [],
    "volume": {
      "api_detail_url": "https://comicvine.gamespot.com/api/volume/4050-1487/",
      "id": 1487,
      "name": "Chamber of Chills Magazine",
      "site_detail_url":
          "https://comicvine.gamespot.com/chamber-of-chills-magazine/4050-1487/"
    }
  },
  "version": "1.0"
};

class MockStream extends Mock implements Stream<int> {}
