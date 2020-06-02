import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webApp/models/models.dart';

Future<Welcome> fetchData() async {
  final response = await http.get('https://api.covid19api.com/summary');

  if (response.statusCode == 200) {
    return Welcome.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
