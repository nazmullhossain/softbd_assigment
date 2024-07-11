import 'dart:convert';

import '../models/content_model.dart';
import 'package:http/http.dart' as http;

class ContentService {
  Future<List<Data>> getContent() async {
    List<Data> getContent = [];

    try {
      http.Response res = await http.get(
        Uri.parse('https://api.npoint.io/bc69ae1f6991da81ab9a'),
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
