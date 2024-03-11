import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonConstants {
  static String imagesPath = 'lib/assets/images/';
  static String defaultContactIcon = 'google_contacts_icon.svg';
  static String baseApiUrl = 'http://comicvine.gamespot.com/api';
  static String apiKey = '1c74d47f7bcd769889b0bad15bd48d826742f9fe';
  static String comicList = '$baseApiUrl/issues$apiKeyFormatJson';
  static String baseComicDetail = '$baseApiUrl/issue/';
  static String apiKeyFormatJson = '?api_key=$apiKey&format=json';
  static String listLayout = 'ListLayout';
  static String gridLayout = 'GridLayout';

  static TextStyle boldText = GoogleFonts.titilliumWeb().copyWith(
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldTextGreen = GoogleFonts.titilliumWeb().copyWith(
    fontWeight: FontWeight.bold,
    color: Colors.green,
  );
  static TextStyle softText = GoogleFonts.titilliumWeb().copyWith(
    color: Colors.blueGrey.shade300,
  );
}
