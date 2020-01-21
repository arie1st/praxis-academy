void main(List<String> arguments) {
  var number = 42;
  printInteger(number);

  var one = int.parse('1'); //mengubah string menjadi integer
  assert(one == 1); //memastikan nilai sudah sesuai (sudah di ubah menjadi int), jika tidak sesuai maka akan error/crash


// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111

  //contoh penggunaan string
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  //string interpolation
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' +
          'which is very handy.');
  assert('That deserves all caps. ' +
      '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' +
          'STRING INTERPOLATION is very handy!');

  //string concatenate (pengabungan)
  var s0 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s0 ==
      'String concatenation works even over '
          'line breaks.');

  var s5 = 'The + operator ' + 'works, as well.';
  assert(s5 == 'The + operator works, as well.');

  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
    var hitPoints = 0;
    assert(hitPoints <= 0);

  // Check for null.
    var unicorn;
    assert(unicorn == null);

  // Check for NaN.
    var iMeantToDoThis = 0 / 0;
    assert(iMeantToDoThis.isNaN);

  //contoh list/array
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  print(list);

  //contoh constant list
  var constantList = const [1, 2, 3];
  /*constantList[1] = 1; // membuka comment ini akan mengakibatkan error karena constantList tidak dapat diubah valuenya */

  //penggabungan list menggunakan spread operator (...)
  var list0 = [1, 2, 3];
  var list2 = [0, ...list0];
  assert(list2.length == 4);

  //jika list 1 null, untuk menghindari error  dapat menggunakan null-aware spread operator (...?)
  var list1;
  var list3 = [0, ...?list1];
  assert(list3.length == 1);






}

printInteger(aNumber){
  print ('the number is $aNumber');
}
