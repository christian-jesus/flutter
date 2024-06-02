import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/video.dart';

class ApiService {
  static const String baseUrl =
      'http://192.168.1.31:8000/api/videos/'; // Cambia la URL base

  Future<List<Video>> fetchVideos() async {
    final response =
        await http.get(Uri.parse('$baseUrl/video')); // Cambia la ruta

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Video> videos =
          body.map((dynamic item) => Video.fromJson(item)).toList();
      return videos;
    } else {
      throw Exception('Failed to load videos');
    }
  }
}
