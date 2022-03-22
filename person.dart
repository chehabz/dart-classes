void main() {
  final person = Person("Mohammad Shehab", 34, 76.5); 
  print(person.describe());
}

class Person {
  
  static const List<String> defaultSkills = ['reading', 'programming'];
  
  Person(this.name, this.age, this.height, {this.skills = defaultSkills});
  
  final String name;
  final int age;
  final double height;
  final List<String>  skills;
  
  String describe() => "Hello, I'm $name. I'm $age years old, " +
    "I'm $height meters tall. My skills are $skills";
}

