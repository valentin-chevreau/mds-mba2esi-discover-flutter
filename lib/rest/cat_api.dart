//This is an helper to perform http request
import 'dart:convert';

import 'package:hello_world_flutter/model/cat_model.dart';
import 'package:http/http.dart' as http;

class CatAPI {
  static final String randomCatURL = 'https://aws.random.cat/meow';

  static Future<Cat> getRandomCat() async {
    var response = await http.get(randomCatURL);

    if (response.statusCode != 200) {
      return null;
    }
    return Cat.fromJson(jsonDecode(response.body));
  }
}
