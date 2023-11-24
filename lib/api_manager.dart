import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api_constants.dart';
import 'package:news/model/SourceResponse.dart';

class ApiManager {
  static Future<SourceResponse> getSources() async {
    //https://newsapi.org/v2/top-headlines/sources?apiKey=3a6cb7527b0646c7a5956faa60a2a9ac
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceApi,
        {"apiKey": "3a6cb7527b0646c7a5956faa60a2a9ac"});
    try {
      var response = await http.get(url);
      var bodyString = response.body; //string
      var json = jsonDecode(bodyString); //convert string to json
      return SourceResponse.fromJson(json); //convert json to object
    } catch (e) {
      throw e;
    }
  }
}