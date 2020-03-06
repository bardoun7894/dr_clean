import 'dart:convert';
 
import 'package:dr_clean/api/api_util.dart';
import 'package:dr_clean/costumer/user.dart';
import 'package:dr_clean/exceptions/exception.dart';
import 'package:http/http.dart' as http;

class Authentication{ 
Map<String,String> headers ={
  
'Accept':'application/Json'
};
Future<User> register(String first_name,String last_name,String email,String password) async{
  
 Map<String,String> body={
'first_name': first_name,
'last_name' : last_name,
'email': email,
'password':password,

 };
http.Response response = await http.post(ApiUtl.AUTH_REGISTER,headers:headers,body: body );
if(response==201){
  //succes registration
  var body =jsonDecode(response.body);
  var data =body['data'];
return User.fromJson(data);
}
return null;

}
Future<User> login(String email,String password) async{  
Map<String,String> body ={ 
'email': email,
'password':password,};
print('ready');
http.Response response =await http.post(ApiUtl.AUTH_LOGIN,headers: headers,body: body);
print('after');
print(response.statusCode);
switch(response.statusCode){
  case 200:
  var body =jsonDecode(response.body);
  var data =body['data'];
 print(User.fromJson(data).email);
  return User.fromJson(data);
  break;
case 404:
 throw UserNotFound();
break;
 case 401:
 throw UserErrors();
break;
default:
return null;
break;
} 
 
}

  
 
}
 