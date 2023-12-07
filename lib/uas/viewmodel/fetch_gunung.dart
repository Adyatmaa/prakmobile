import 'dart:convert';
import 'package:prakmobile/uas/model/gunung.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Repository {
  var apiUrl =
      'https://gundo-apis-default-rtdb.firebaseio.com/gundo.json?auth=Aa5c0wDmaD7iseZ9wszV8yQvkR4J0SqjCx0YgRcW';

  Future<List<Gunung>> fetchData() async {
    Response response = await http.get(Uri.parse(apiUrl));
    List<Gunung> dataGunung;

    if (response.statusCode == 200) {
      List<dynamic> listJson = json.decode(response.body)["data"];
      dataGunung = listJson.map((e) => Gunung.fromJson(e)).toList();

      print(dataGunung);
      return dataGunung;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
