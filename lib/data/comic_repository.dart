import 'dart:convert';
import 'package:sundevs/data/utils/api_data_responses.dart';
import 'package:http/http.dart' as http;
import 'package:sundevs/data/utils/common_constants.dart';
import 'package:sundevs/data/utils/details_api_response.dart';

class ComicRepository {
  ComicRepository();

  Future<ApiResponse> fetchIssues() async {
    final response = await http.get(Uri.parse(CommonConstants.comicList));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      final result = ApiResponse.fromJson(jsonResponse);
      return result;
    } else {
      throw Exception('Failed to load issues');
    }
  }

  Future<DetailsApiResponse> fetchIssueDetail(String apiDetailUrl) async {
    final uriPath = '$apiDetailUrl${CommonConstants.apiKeyFormatJson}';
    final response = await http.get(Uri.parse(uriPath));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      return DetailsApiResponse.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load issues');
    }
  }
}


/*Debes construir una aplicación web con los siguientes requisitos:
● Mostrar una lista de los últimos cómics.
● Mostrar los detalles del cómic seleccionado.
● Diseñar la interfaz de usuario según el diseño presentado.*/
/*
Lista de Comics:
https://comicvine.gamespot.com/api/issues/?api_key=YOUR_API_KEY&format=json
*/
/*
Para cada cómic, debes obtener los siguientes datos de la respuesta:
La imagen del cómic es: image.original_url
La fecha es: date_added
El nombre es: name + issue_number
*/


/*La URL base proviene de la propiedad "api_detail_url" obtenida en la respuesta anterior para
cada cómic.
Debes enlazar "api_detail_url + ?api_key=xxx&format=json".
https://comicvine.gamespot.com/api/issue/4000-6/?api_key=YOUR_API_KEY&format=json */


/*Para los detalles del cómic, debes obtener los siguientes datos de la respuesta:
La imagen del cómic es: image.original_url
Créditos de personajes: character_credits
Créditos del equipo: team_credits
Créditos de ubicación: location_credits*/