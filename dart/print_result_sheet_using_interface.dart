void main() {
  var a = PrintStudentInfo();
  var b = StudentData();
  a.printMechanism(b.header);
  a.printMechanism(b.shahed);
  a.printMechanism(b.shishir);
  a.printMechanism(b.ayman);
  a.printMechanism(b.rafsan);
}

abstract class PrintMechanism {
  printMechanism(List studentInfo) {}
}

class PrintStudentInfo implements PrintMechanism {
  @override
  printMechanism(List studentInfo) {
    var row = "";
    for (var item in studentInfo) {
      row += item.padRight(15);
    }
    print(row);
  }
}

class StudentData {
  List<String> header = ["Name", "Roll", "Subject", "GPA"];
  List<String> shahed = ["Shahed Noor", "445414", "Math", "4.00"];
  List<String> shishir = ["Syed Shishir", "445376", "Physics", "4.00"];
  List<String> ayman = ["Ayman Sadik", "445370", "Chemistry", "3.95"];
  List<String> rafsan = ["Rafsan", "445576", "Biology", "3.90"];
}