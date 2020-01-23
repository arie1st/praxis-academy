import 'dart:math';

void main(List<String> args){

  GenericClass<int> iOb = new GenericClass(88);

  print(iOb.showType());
  //no cast is needed
  var v = iOb.getdata();
  print('value : ${v}');

  // Create a Gen object for Strings.
  GenericClass<String> abc = new GenericClass("Generic Test");
  print(abc.showType());
  var c = abc.getdata();
  print('value : ${c}');
}

class GenericClass<T>{
  T data;

  GenericClass(T o){
    data = o;
  }

  getdata(){
    return data;
  }

  setData(data) {
    this.data = data;
  }

  showType(){
    print('Tipe dari T adalah ${T}');
  }

}