class Student {
  String name;
  List<double> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    double sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  final Student student1 = Student('Alice', [85, 90, 92, 88, 87]);
  final Student student2 = Student('Bob', [92, 95, 88, 90]);
  final Student student3 = Student('Charlie', []);

  print('${student1.name}\'s average mark: ${student1.calculateAverageMark()}');
  print('${student2.name}\'s average mark: ${student2.calculateAverageMark()}');
  print('${student3.name}\'s average mark: ${student3.calculateAverageMark()}');
}
