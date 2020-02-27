import 'dart:convert';

import 'package:dr_clean/api/api_util.dart';
import 'package:dr_clean/clothes/clothes.dart';
import 'package:http/http.dart' as http;

class ClothesApi {

 static Future<List<Clothes>> fetchClothes(int page) async {

    print('before');
    Map<String, String> headers = {'Accept':'Application/json'};
    String url= ApiUtl.CLOTHES +"?page="+page.toString();
        print('before2');
    var response = await http.get(url,headers:headers);
       
    print("res"+response.body);
    List<Clothes> clothes = [];
 
switch(response.statusCode){
  case 200 :
    var body = jsonDecode(response.body);
     for (var item in body['data'])
      {
       print(item);
       clothes.add(Clothes.fromJson(item));
        }
     break;
  case 404 :
      throw Exception("404 not found");
  break;
}
 return clothes;

   } 

    
 }
 