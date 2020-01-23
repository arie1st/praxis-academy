
void main(List<String> arguments) {
   //belajar list
  var num_list = [1,2,3];
  num_list.add(16);
  num_list.addAll([11,13,17]);
  num_list[0] =100;
  print(num_list);
  bool res = num_list.remove(3);
  print(num_list);
  num_list.removeAt(2);
  print(num_list);
  num_list.removeLast();
  print(num_list);
  num_list.removeRange(1,3);
  print(num_list);

  var lst = new List(3);
  lst[0] = 12;
  lst[1] = 13;
  lst[2] = 11;
  print(lst);

  //map
  var details = {'Usrname':'tom','Password':'pass@123'};
  details['Uid'] = 'U1oo1';
  print(details['Usrname']);
  print(details);

  //map construct0r
  var details2 = new Map();
  details2['Usrname'] = 'admin';
  details2['Password'] = 'admin@123';
  print(details2);


  //set : collection of object
  Set numberSet = new  Set();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  print("Default implementation :${numberSet.runtimeType}");

  for(var no in numberSet) {
    print(no);
  }

  //GENERICS
  DataHolder<String> dataHolder = new DataHolder('Some data');
  print(dataHolder.getData());
  dataHolder.setData('New Data');
  print(dataHolder.getData());
}

//GENERICS
class DataHolder<T> {
  T data;

  DataHolder(this.data);

  getData() {
    return data;
  }

  setData(data) {
    this.data = data;
  }
}