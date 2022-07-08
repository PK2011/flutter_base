import 'package:flutter_base/utilities/patterns.dart';

bool hasMatch(String? s, String p) {
  return (s == null) ? false : RegExp(p).hasMatch(s);
}

extension CapExtension on String {
  String get inCaps => isNotEmpty ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String get allInCaps => toUpperCase();
  String get capitalizeFirstOfEach => replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.inCaps).join(" ");
  String get camelCase => '${this[0].toLowerCase()}${substring(1).capitalizeFirstOfEach.replaceAll(' ', '')}';
}

extension RegexExtension on String {
  bool validateEmail() => hasMatch(this, Patterns.email);
  bool validatePhone() => hasMatch(this, Patterns.phone);
  bool validateURL() => hasMatch(this, Patterns.url);
}