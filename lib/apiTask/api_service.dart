import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Map<String, String> infoMap = {};

  static Future<void> fetchData() async {
    String uri = 'https://jsonplaceholder.typicode.com/posts';

    final response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      for (var item in data) {
        infoMap[item['title']] = item['body'];
      }
    } else {
      debugPrint("Error while fetching api data");
    }
  }
}
