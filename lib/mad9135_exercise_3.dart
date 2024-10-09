export 'package:mad9135_exercise_3/mad9135_exercise_3.dart' show Student;

class Student {
  List<Map<String, String>> students;

  Student(this.students) {
    students = students;
  }

  sort(String field) {
    if (!students.first.containsKey(field)) {
      throw ArgumentError("Field $field not found in student list");
    }
    students.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  plus(Map<String, String> student) {
    students.add(student);
  }

  remove(String field) {
    // search for values of all possible keys, if match found, remove the student
    students.removeWhere((s) => s.containsValue(field));
  }

  output() {
    students.forEach((s) {
      print("$s");
    });
  }
}
