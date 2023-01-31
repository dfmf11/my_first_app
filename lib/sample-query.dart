import 'package:my_first_app/util/config.dart';
import 'package:pocketbase/pocketbase.dart';

final client = PocketBase(Config.baseUrl);

class SampleData {


  static Future <ResultList<dynamic>> test() async {

    var aa = client.collection("notes").getList(
      page: 1,
      perPage: 20,
    );
    final body = <String, dynamic>{
      "content": "huhu",
      "item": "hihi"
    };


    await client.collection("notes").create( body: body);


    return aa;
  }

}
