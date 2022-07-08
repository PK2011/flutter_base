import 'package:flutter_base/utilities/extensions/lib_extensions.dart';

class Endpoints{

  static const String _baseURL = "https://google.com";
  static const Map<String, String?> _endURL = {
    "login": "login"
  };

  static Map<String,dynamic> buildServiceUrl(String method, String endUrl, {String id = ""}){
    String? myEndUrl = _endURL[endUrl];
    String buildMyUrl = "$_baseURL/$myEndUrl";

    if(id.isNotEmpty) {
      buildMyUrl = "$buildMyUrl/$id";
    }

    return {
      "method": method.allInCaps,"url": Uri.parse(Uri.encodeFull(buildMyUrl))
    };
  }


}