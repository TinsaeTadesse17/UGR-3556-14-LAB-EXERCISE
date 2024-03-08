void main() {
  final Map<String, int> studentMarks = {
    'Abebe': 85,
    'Bekele': 92,
    'Chala': 78,
  };

  print('Student marks:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  final String studentName = 'Bob';
  if (studentMarks.containsKey(studentName)) {
    final int? mark = studentMarks[studentName];
    print('$studentName\'s mark: $mark');
  } else {
    print('No entry found for $studentName');
  }
}
