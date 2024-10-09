export 'package:mad9135_exercise_3/mad9135_exercise_3.dart' show Student;

class Student {
  List<Map<String, String>> people;

  Student(this.people) {
    //increment the static count
    //create the student object with it's member fields
    // this.name = _name;
    // this.id = _id;
    people = people;
    print("what is the peopole $people");
  }

  sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
    print(people);
  }
}
