void main() {
  
  final person = Person(name: "Mohammad Shehab", age: 34, height: 76.5); 
  print(person.describe());
  
  final employee = Employee(name: "Mohammad Shehab", age: 34, height: 76.5, employeeID: "moha4605", salary: 10.5);
  
  print(employee.toString());
}

class Person {
  
  static const List<String> defaultSkills = ['reading', 'programming'];
  
  Person({this.name = "", this.age = 0, this.height = 0, this.skills = defaultSkills});
  
  final String name;
  final int age;
  final double height;
  final List<String>  skills;
  
  String describe() => "Hello, I'm $name. I'm $age years old, " 
    "I'm $height meters tall. My skills are $skills";
  
 
  @override
  String toString() => "name: $name, age: $age, height: $height";
}

class Employee extends Person {
  
 final String employeeID;
 final double salary;
  
 Employee({String name = "", int age = 0, double height = 0.0, this.employeeID = "", this.salary = 0}):
  super(name: name, age: age, height: height);
  
  @override
  String toString() => "${super.toString()}, employeeID: $employeeID, salary: $salary";
}
