import 'dart:convert';

import 'package:checkit_app/albums.dart';
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
bool ePress, jPress, mcPress, wcPress = false;
String result = "just starting";
List<Album> objectList = [];
List<Album> eList = [];
List<Album> jList = [];
List<Album> mcList = [];
List<Album> wcList = [];
List<Album> categoryList = [];
List<Album> searchList = [];
Album selected;

Future<List<Album>> fetchdata()  async{

  final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
  final decoded = jsonDecode(response.body);


  if (response.statusCode == 200){

    decoded.forEach((e) => objectList.add(Album.fromJson(e)));

    objectList.forEach((a){
      if(a.category == 'electronics'){eList.add(a);}
      else if(a.category == 'jewelery'){jList.add(a);}
      else if(a.category == 'men\'s clothing'){mcList.add(a);}
      else if(a.category == 'women\'s clothing'){wcList.add(a);}
    }
    );




    return objectList;


  }
  else{throw Exception("failed to get response");}


}


void enlistSearch(string){
  searchList.clear();
  objectList.forEach((b){
    if((b.title.contains(string))||(b.category.contains(string))){searchList.add(b);}

  }
  );
}

void enlistCategory(){
  categoryList.clear();
  if (ePress){categoryList = eList;}
  else if (jPress){categoryList = jList;}
  else if (mcPress){categoryList = mcList;}
  else {categoryList = wcList;}
  ePress = false; jPress = false; wcPress = false; mcPress = false;
}