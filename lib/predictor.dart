import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';

class Predictor{
  static Future predict(Map<String, dynamic> getBody) async{
    http.Response res = await http.post(
      'https://cognitive-model.herokuapp.com/predict',
      // headers: await header,
      body: getBody,
    );

    // List<Class> result = [];
    String result;

    log(res.body);

    try {
      log(res.body);

      var body = json.decode(res.body);
      // log(result);
      // log('body');

      // for (var i = 0; i < body['data'].length; i++) {
      //   var jsonClass = body['data'][i];

      //   result.add(Class.fromJSON(jsonClass));

      //   print(result[i]);
      // }



      return body['result'];

    } on FormatException {
      print(res.body);
      return null;
    }
  }
}