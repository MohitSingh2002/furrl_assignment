import 'dart:convert';
import 'package:furrl_assignment/models/Author.dart';
import 'package:http/http.dart' as http;

// class used to make api calls.
class ApiService {
  
  Future<String> generateId() async {
    Uri url = Uri.parse('https://www.uuidtools.com/api/generate/v1');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return List<String>.from(json.decode(response.body).map((x) => x)).elementAt(0);
    } else {
      throw 'Some error occurred';
    }
  }

  Future<List<Author>> getAuthorsList() async {
    Uri url = Uri.parse('https://picsum.photos/v2/list');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return List<Author>.from(json.decode(response.body).map((x) => Author.fromJson(x)));
    } else {
      throw 'Some error occurred';
    }
  }
  
}
