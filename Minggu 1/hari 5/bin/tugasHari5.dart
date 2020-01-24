import 'dart:convert';
import 'dart:io';
import 'dart:core';

import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

main(){
  print('Mulai scrapping...');
  grep();
  print('Scrapping selesai!');
}

Future grep() async {
  //baca website
  var client = Client();
  Response response = await client.get('https://www.detik.com');

  //pilih element web yang mau disimpan
  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('li.nav__item >a');

  List<Map<String, dynamic>> linkMap = [];

  for (var link in links) {
    linkMap.add({
      'title': link.text,
      'href': link.attributes['href'],
    });
  }
  var data= await File('data.txt').writeAsStringSync(linkMap.toString());




}