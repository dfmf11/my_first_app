import 'package:flutter/widgets.dart';
import 'package:my_first_app/util/config.dart';
import 'package:pocketbase/pocketbase.dart';

final client = PocketBase(Config.baseUrl);

class SampleData {


  static Future <ResultList<dynamic>> test(){

    var dynamic = client.records.getList(
      "notes",
      page: 1,
      perPage: 20,
    );
    return dynamic;
  }

}
