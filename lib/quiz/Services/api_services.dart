import 'dart:convert';
import 'package:http/http.dart' as http;

var link = "https://opentdb.com/api.php?amount=20";

getQuiz(String category, String difficulty) async {
  var res = await http.get(
      Uri.parse(link + '&category=' + category + "&difficulty=" + difficulty));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print(link + '&category=' + category + "&difficulty=" + difficulty);
    return data;
  }
}
