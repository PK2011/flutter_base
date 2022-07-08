import 'dart:async';
import 'package:http/http.dart' as http;

class XHR {
  static Future<dynamic> call(String method, Uri url, header, body) async {
    late http.Response response;
    try {
      switch (method.toUpperCase()) {
        case 'GET':
          response = await http.get(
            url,
            headers: header,
          );
          break;

        case 'POST':
          response = await http.post(
            url,
            body: body,
            headers: header,
          );
          break;

        case 'PUT':
          response = await http.put(
            url,
            body: body,
            headers: header,
          );
          break;
      }
    } catch (exception) {
      var errResponse = {
        "statusCode" : 0
      };
      return errResponse;
    }
    return response;
  }
}
