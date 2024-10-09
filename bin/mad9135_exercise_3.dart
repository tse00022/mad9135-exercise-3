import 'package:mad9135_exercise_3/mad9135_exercise_3.dart';
import 'dart:convert' as convert;

void main(List<String> arguments) {
  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  // convert from jsonString to List<Map<String, String>>
  List<dynamic> jsonList = convert.jsonDecode(json);
  List<Map<String, String>> listMap = jsonList.map((item) {
    Map<String, dynamic> map = item;
    return map.map((key, value) => MapEntry(key, value.toString()));
  }).toList();

  Student sList = Student(listMap);
  sList.plus(
      {'first': 'Henna', 'last': 'Max', 'email': 'henna@algonquincollege.com'});
  sList.sort("first");
  sList.remove("Tony");
  sList.output();
}
