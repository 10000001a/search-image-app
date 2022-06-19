import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/photo.dart';

class PixabayApi {
  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '28139964-75afc959ebcc2529c38689afc';

  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(
        Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo&pretty=true'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
