import 'dart:convert';

import 'package:asseginment/varriable/varriable.dart';

import '../models/content_model.dart';
import 'package:http/http.dart' as http;

class ContentService {
  Future<List<Data>> getContent() async {
    List<Data> getContent = [];

    try {
      http.Response res = await http.get(
        Uri.parse(Variables.baseUrl),
      );
      print("company data${res.body}");

      if (res.statusCode == 200) {
        var jsonRes = jsonDecode(res.body);
        print(jsonRes);

        ContentModel customerModel = ContentModel.fromJson(jsonRes);

        for (Data data in customerModel.data!) {
          getContent.add(data);
        }
      } else {}
    } catch (e) {
      print(e.toString());
    }
    return getContent;
  }
}
//