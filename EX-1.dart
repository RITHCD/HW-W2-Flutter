enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String _street;
  final String _city;
  final String _zipCode;
  
  const Address(this._street, this._city, this._zipCode);


  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;

  
}

class Employee {
  final String _name;
  final double _baseSalary;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;



//main constructor
  Employee(this._name, this._baseSalary, this._skills, this._address, this._yearsOfExperience);



//name constructer
  Employee.mobileDeveloper(String name, Address address, int years):
  _name = name,
  _baseSalary = 40000,
  _skills = [Skill.FLUTTER, Skill.DART],
  _address = address,
  _yearsOfExperience = years;

//getter
String get name => _name;
double get baseSalary => _baseSalary;
List<Skill> get skills => _skills;
Address get address => _address;
int get yearsOfExperience => _yearsOfExperience;



//compute salary
double computeSalary() {
    double salary = _baseSalary + _yearsOfExperience * 2000;

    for (var skill in _skills) {
      switch (skill) {
        case Skill.FLUTTER:
          salary += 5000;
          break;
        case Skill.DART:
          salary += 3000;
          break;
        case Skill.OTHER:
          salary += 1000;
          break;
      }
    }
    return salary;
  }


  void printDetails() {
      print('Employee: $_name, Base Salary: \$$_baseSalary, '
        'Years: $_yearsOfExperience, Salary: \$${computeSalary()}');
  }
}

void main() {
  var emp1 = Employee.mobileDeveloper(
      'Sokea', Address('St 110', 'Phnom Penh', '12000'), 3);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 45000, [Skill.DART, Skill.OTHER],
      Address('St 271', 'Siem Reap', '17000'), 5);
  emp2.printDetails();
}
