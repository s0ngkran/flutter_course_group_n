class Person {
  // String name = 'john';
  // String? name;
  String name = 'john';
  static const double pi = 3.141592; //
  String? firstName;
  String? lastName;
  int? age;
  String key = 'value';

  // Person() {
  //   name = 'john';
  // }
  // Person(String inputName) {
  //   this.name = inputName;
  // }
  // Person(String name) {
  //   this.name = name;
  //   print('constructor of person $name');
  // }
  Person(
    this.key, // positional argument
    {
    required this.firstName,
    this.lastName = 'defautt lastname',
    this.age,
  } // optional argument

      );

  sayHi() {
    print('hi in class');
  }

  sayHello() {
    print('hello');
  }

  hi() {
    print('name: $name');
    print('firstName: $firstName');
    print('lastName: $lastName');
    print('age: $age');
  }
}

class Emp {
  String name = 'john';
}

// class Student extends Person {
//   late String studentId;
//   // short term
//   // Student(this.studentId);
//   // Student( this.studentId, super.name);
//   // Student(String name, this.studentId) : super(name);
//   Student(super.key, this.studentId);
//
//   // long term
//
//   hi() {
//     print(name);
//     print(studentId);
//   }
// }

// static
// dynamic
enum Status {
  online,
  offline,
  away,
}

abstract class BigAnimal {
  void eat();
  void walk();
}

abstract class Animal {
  void eat();
  void sleep();
}

class CBigAnimal {
  eat() {
    print('big animal eat');
  }

  walk() {
    print('big animal walk');
  }
}

mixin CAnimal {
  eat() {
    print('animal eat');
  }

  sleep() {
    print('animal sleep');
  }
}

mixin CAnimalAnimal {
  eat() {
    print('animal eat eat');
  }
}

mixin MAnimal on CAnimalAnimal {
  void eat() {
    print('animal eat');
  }
}

class CRabbit extends CBigAnimal with CAnimal, CAnimalAnimal {}

class Rabbit with Animal, BigAnimal {
  @override
  void eat() {
    print('my rabbit is eating');
  }

  @override
  void walk() {
    print('my rabbit is walking');
  }

  @override
  void sleep() {
    print('my rabbit is sleeping');
  }
}

abstract class House {
  void openDoor() {}
  void closeDoor() {
    print('please implement closeDoor');
  }
}

// abstract + extends -> some
// abstract + implements -> all

class BigHouse implements House {
  @override
  void closeDoor() {
    print('close big door');
  }

  @override
  void openDoor() {
    print('open big door');
  }

  openWindow() {
    print('open big window');
  }
}

main() {
  // Person p1 = Person();
  // Person p2 = Person('dog');
  // Student s1 = Student('123456');
  // Student s1 = Student('john','123456');

  // p1.sayHi();
  // p1.sayHello();
  // s1.hi();
  // p1.hi();
  // var e = Emp();

  // var p = Person(
  //   'hname name name',
  //   firstName: 'xxxfirttname',
  //   age: 10,
  // );
  // p.hi();
  // var s = Student('my key', 'id132');
  // s.hi();
  // print(Status.online);
  // var x = BigHouse();
  // x.openWindow();
  // var x = CRabbit();
  // x.eat();
  int a = 5;
  // int getSix() {
  //   return 6;
  // }
  // a.pr();
  // print(a.convertToList());

  // List<int> x = a.convertToList();
  // print(x);

  // var x = a..convertToList();
  // int x = a;
  // a.convertToList();
  // print(x); // 5

  // int x = a..convertToList();

  // List<String> names = ['john', 'aane', 'joe'];
  // names.sort((a, b) => a.compareTo(b));
  // print(names);
  //
  // List<String> names = ['john', 'aane', 'joe']..sort((a, b) => a.compareTo(b));
  // print(names);

}

extension XXXXXX on int {
  int getSix() {
    return 6;
  }

  void pr() {
    print('my int is $this');
  }

  List<int> convertToList() {
    return [this, this, 7, 9];
  }
}

// api -> application programming interface
//
// server
//  |
//  V
//  show dialog  1 -> plain text
//  {
//      "command": "show dialog" 2  -> json
//  }
//  101111000  3 -> binary
//
//
// mobile(user)



// abstract -> thinking
// class -> blueprint
// init class -> house

