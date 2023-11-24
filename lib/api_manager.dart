import 'package:http/http.dart' as http;

class ApiManager {
  static void getSources() {
    //https://newsapi.org/v2/top-headlines/sources?apiKey=3a6cb7527b0646c7a5956faa60a2a9ac
    Uri url = Uri.https(authority)
    http.get(url)
  }
}