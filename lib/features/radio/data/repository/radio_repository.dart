import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:islamic_c4/features/radio/data/models/radio_model.dart';

class RadioRepository {
  final String apiUrl = 'https://mp3quran.net/api/v3/radios';

  Future<List<RadioModel>> fetchRadios() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data['radios'] as List).map((radio) => RadioModel.fromJson(radio)).toList();
    } else {
      throw Exception('Failed to load radios');
    }
  }
}