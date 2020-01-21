import 'dart:math';

void main(List<String> arguments) {

  var T = [2,7,2,4,11,5,7,5,8,6,4,-41,11,350,3,55,12,1,9,99,7,76,33,45,7,188,5,6,7,3,9,2,9,33];
  var listB = [72,2,10,99,6];
  /* soal 1 : Index Equal to The Value */
  print('\n soal 1 : Index Equal to The Value');
  var nilai =5;
  tugas1(nilai, T);

  /* soal 2 : Maximum between given indexes */
  print('\n soal 2 : Maximum between given indexes');
  var uIndex1 = 3;
  var uIndex2 = 7;
  tugas2(uIndex1, uIndex2, T);

  /* soal 3 : Maximum and Minimum Values */
  print('\n soal 3 : Maximum and Minimum Values');
  tugas3(T);

  /* soal 4 : Maximum and Minimum Differece */
  print('\n soal 4 : Maximum and Minimum Difference');
  tugas4(listB);

  /* soal 5 : Same number in both arrays*/
  print('\n soal 5 : Same number in both arrays');
  tugas5(T,listB);


}

/* soal 1 : Index Equal to The Value */
tugas1(var uInput, List inpuT){
  var i = uInput;
  if (inpuT[i] == i) {
    print(i);
  }
  else {
    print('-1');
  }
}

/* soal 2 : Maximum between given indexes */
tugas2(var index1, var index2, List listData){
  var valA = index1;
  var valB = index2;
  var maxValue=0;
  for(var x=valA ; x<= valB ;x++){
    if(listData[x] > maxValue)
      {
        maxValue = listData[x];
      }
  }
  print(maxValue);
}

/* soal 3 : Maximum and Minimum Values */
tugas3(List ListData){
 ListData.sort();
  print('minimum value : ${ListData[0]}');
  print('minimum value : ${ListData.last}');
}

/* soal 4 : Maximum and Minimum differences */
tugas4(List ListData){
  var minDiff = 0;
  var maxDiff = 0;
  var dataLenght = ListData.length;


  for(var i = 0; i<dataLenght-1; i++){
    var diff = ListData[i]-ListData[i+1];
    if(minDiff>=diff){
      minDiff = diff;
    }
    else{
        if(diff>=maxDiff) {
          maxDiff = diff;
        }
    }
  }
  print('Min Diff = ${minDiff}');
  print('Max Diff = ${maxDiff}');
}

/* soal 5 : Same number in both arrays*/
tugas5(List dataA, List dataB){
  var listLenght = dataB.length;
  for(var i = 0; i < listLenght; i++){
    if(dataA.contains(dataB[i])){
      print('${dataB[i]} exist on list ');
    }
    else{
      print('${dataB[i]} not exist on list');
    }
  }

}