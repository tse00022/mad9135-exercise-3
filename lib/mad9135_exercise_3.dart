export 'package:mad9135_exercise_3/mad9135_exercise_3.dart' show Student;

class Student {
  List<Map<String, String>> students;

  Student(this.students) {
    students = students;
  }

  sort(String field) {
    students.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  plus(Map<String, String> student) {
    students.add(student);
  }

  output() {
    students.forEach((s) {
      print("$s");
    });
  }
}
