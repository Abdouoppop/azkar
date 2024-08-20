import 'dart:convert';

import 'package:flutter/services.dart';
//import 'package:http/http.dart';

class Api {
  late String category;
  late String count;
  late String content;

  Api({required this.category, required this.count, required this.content});

  factory Api.fromJson(Map<String, dynamic> json) {
    return Api(
        category: json["category"],
        count: json["count"],
        content: json["content"]);
  }
}

class Main {
  final List<dynamic> main;
  Main({required this.main});

  factory Main.fromJson(Map<String, dynamic> json, String category) {
    return Main(main: json[category] as List<dynamic>);
  }
}

class Function1 {
  // Define the category as a variable
  String category;
  Function1(this.category);
  Future<List<Api>> api() async {
    final response = await rootBundle.loadString('API/adkar.json');
    var azkarData = jsonDecode(response);
    Main main = Main.fromJson(azkarData, category);
    List<Api> listofazkar = [];
    for (var item in main.main) {
      listofazkar.add(Api.fromJson(item));
    }
    return listofazkar;
  }
}


////
