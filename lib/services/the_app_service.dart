import 'dart:convert';
import 'package:http/http.dart';
import 'package:i_am_kiishii/model/kiishi.dart';

class TheAppService {
  final String _theLandingPoint = 'https://jsonkeeper.com/b/0U7X';

  Future<List<Kiishi>> getData() async {
    try {
      final Uri _theUri = Uri.parse(_theLandingPoint);

      final Response _response = await get(_theUri);

      if (_response.statusCode == 200) {
        final List _theConvertedJson = jsonDecode(_response.body) as List;

        final List<Kiishi> _favourite = _theConvertedJson.map((json) => Kiishi.fromJson(json)).toList();
        
        return _favourite;
      } else {
        throw Exception('Could not fetch data');
      }
    } catch (e) {
      rethrow;
    }
  }
}