import 'dart:async';

void main() async {
  var c = new hello();
  var x = 'indonesia';
  await c.coba(x);

  print('all done');
}

class hello {

  coba(s) {
    print(s);
  }
}