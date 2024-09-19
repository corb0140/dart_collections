import 'package:hybrid_exercise_3/hybrid_exercise_3.dart' as collection;
import "dart:convert";

void main(List<String> arguments) async {
  String json = '''
[
    {
      "first": "Steve",
      "last": "Griffith",
      "email": "griffis@algonquincollege.com"
    },
    {
      "first": "Adesh",
      "last": "Shah",
      "email": "shaha@algonquincollege.com"
    },
    {
      "first": "Tony",
      "last": "Davidson",
      "email": "davidst@algonquincollege.com"
    },
    {
      "first": "Adam",
      "last": "Robillard",
      "email": "robilla@algonquincollege.com"
    }
  ]''';

  List<dynamic> jsonList = jsonDecode(json);

  List<Map<String, String>> studentsList = jsonList.map((item) {
    return Map<String, String>.from(item as Map);
  }).toList();

  collection.Students studentList = collection.Students(studentsList);

  print(studentList.people);
  studentList.sort('first');
  print(studentList.people);
}
