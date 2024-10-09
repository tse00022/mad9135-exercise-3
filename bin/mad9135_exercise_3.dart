import 'package:mad9135_exercise_3/mad9135_exercise_3.dart';

void main(List<String> arguments) {
  Student s = Student([
    {'name': 'Charlie', 'age': '35', "id": "3"},
    {'name': 'Alice', 'age': '30', "id": "1"},
    {'name': 'Bob', 'age': '25', "id": "2"},
  ]);
  s.sort("id");
}
