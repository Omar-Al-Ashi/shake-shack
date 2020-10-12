import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  static Future<List> getInitialIcon() async {
    try {
      var url = "https://run.mocky.io/v3/5bdc1925-a13e-4e76-8a09-3f9b3520bece";
      final apiresponse = await http.get(url);
      if (apiresponse.statusCode == 200) {
        var icons = jsonDecode(apiresponse.body)["data"];
        return icons;
      } else {
        throw Error();
      }
    } catch (error) {}
  }

  static Future<List> getMostOrdered() async {
    try {
      var url = "https://run.mocky.io/v3/e5a2bcbb-4ba3-4d2b-9e3a-4fad46d22cdc";
      final apiresponse = await http.get(url);
      if (apiresponse.statusCode == 200) {
        var response = jsonDecode(apiresponse.body)["data"];
        return response;
      } else {
        throw Error();
      }
    } catch (error) {}
  }

  static Future<List> getBurgerList() async {
    try {
      var url = "https://run.mocky.io/v3/28f47b65-d117-4c70-a513-a79531a19a89";
      final apiresponse = await http.get(url);
      if (apiresponse.statusCode == 200) {
        var response = jsonDecode(apiresponse.body)["data"];
        return response;
      } else {
        throw Error();
      }
    } catch (error) {}
  }
}
