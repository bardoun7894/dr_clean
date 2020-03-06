import 'package:dr_clean/api/authentication.dart';
import 'package:dr_clean/api/clothes_api.dart';
import 'package:dr_clean/clothes/clothes.dart';
import 'package:dr_clean/exceptions/exception.dart';
import 'package:dr_clean/utilities/size_config.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
 
  Authentication authentication=Authentication();
  @override
  Widget build(BuildContext context) {
     SizeConfig sizeConfig=SizeConfig(context);
     print(sizeConfig.screenType);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: FutureBuilder(
  future:authentication.login("mbardouni44@gmail.com","moha1234") ,
  builder: (BuildContext context, AsyncSnapshot snapshot){
     switch(snapshot.connectionState){
       case ConnectionState.none:
          return _loading("none");
         break;
       case ConnectionState.waiting:
          return _loading("waiting");
         break;
       case ConnectionState.active:
         print("active");
         break;
       case ConnectionState.done:
          print("done");
              if (snapshot.hasError) {
                if(snapshot.error is UserNotFound){
                  return _error("username is not correct");
                }else{
                 return _error(snapshot.error.toString());
                }
                
                } else {
                  if (!snapshot.hasData) {
                print("has no data");
                  } else { 
                     print(snapshot.data.email);
                }
                 return Container(
            width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
           color: Colors.blue,);
         break;
         }
         
         return Container(
            width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
           color: Colors.amberAccent,);
  }}
  )
    );
  }

  _error(error) {
    return Container(
        child: Center(
      child: Text(
        "$error",
        style: TextStyle(fontSize: 16),
      ),
    ));
  }

  _loading(e) {
    return Container(
      child: Center(
        child: Text('loading ...$e'),
      ),
    );
  }

  _drawClothes(Clothes clothes) {
    return Column(
      children: <Widget>[
        (clothes.clothesImages != null)
            ? Image(
                width: 100,
                height: 100,
                image: NetworkImage(clothes.clothesImages.url))
            : Container(
                color: Colors.black,
              ),
        Text(
          clothes.name,
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
