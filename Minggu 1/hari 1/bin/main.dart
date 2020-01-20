/*Importing core libraries
import 'dart:math';

// Importing libraries from external packages
import 'package:test/test.dart';

// Importing files
import 'path/to/my_other_file.dart';
*/


void main(List<String> arguments) {
  print('Hello world: ${calculate()}!');

  var name ='Voyarger I';
  var s1 ='''
  this is 
  multiline var''';
  var year =1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  print (name +" "+ year.toString()+" "+s1);

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (var object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  var result = fibonacci(20);
  print (result);
  flybyObjects.where((name) => name.contains('tu')).forEach(print);
}

/*functions*/
int calculate() {
  return 6 * 7;
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}






