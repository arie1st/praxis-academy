

void main(List<String> arguments) {

  Dog d = new Dog('Duffy',5);
  //Dog d = new Dog('Duffy',5, CurrentState.walking);
  print(d.name);
  print(d.age);
  d.roll();
  d._hiddenMethod();
 // print(d.state == CurrentState.sleeping);


  Pug p = new Pug.large('Duffy');
  print(p.name);
  p.bark();

  d.respectedName = 'Duffy';
  print(d.respectedName);
}

class Dog {
  String name;
  int age;
  //CurrentState state;

  Dog(this.name, this.age);
  //Dog(this.name, this.age, this.state);
  //constructor
  Dog.newBorn() {
    name = 'Doggy';
    age = 5;
  }

  String get respectedName {
    return 'Mr.$name';
  }

  set respectedName(String newName) {
    name = newName;
  }
  //method
  static bark() {
    print('Bow Wow');
  }

  roll(){
    bark();
  }

  //hidden method / private method
  _hiddenMethod() {
    print('I can only be called internally!');
  }


}

class Pug extends Dog {
  Pug(String name, int age): super(name, age);

  Pug.small(String name): this(name, 1);

  Pug.large(String name): this(name, 3);

  @override
  bark() {
    print('Meow!');
  }
}

abstract class AbstractDog {
  void bark();

  void _hiddenMethod();
}

enum CurrentState {
  sleeping,
  barking,
  eating,
  walking
}