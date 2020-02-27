import 'package:dr_clean/api/clothes_api.dart';
import 'package:dr_clean/clothes/clothes.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
   
  @override
  Widget build(BuildContext context) {
    return Container(
       child: 
  FutureBuilder(
    future: ClothesApi.fetchClothes(1),
    builder: (BuildContext context, AsyncSnapshot<List<Clothes>> snapshot){

      switch(snapshot.connectionState){
        case ConnectionState.none:
         return _error(snapshot.error.toString());
          break;
        case ConnectionState.waiting: 
          return _loading('w');
          break;
        case ConnectionState.active:
          return _loading('active');
          break;
        case ConnectionState.done  :
        if(snapshot.hasError){
          return _error(snapshot.error.toString());
        }else{
          if(!snapshot.hasData){
           return _error("has no data");
          }else{
         return  Container(
                   color: Colors.white,
                    child: ListView.builder(
             itemCount: snapshot.data.length,
             itemBuilder: (BuildContext context,int position){
             return _drawClothes(snapshot.data[position]);
           }),
         );

          }
        }
          

          break;}
          return Container();
    })
  ,
    );
  }
  _error(error){
    return Container( child: Center(child: Text("$error",style: TextStyle(fontSize: 16),),));
  }
  _loading(e){  return Container(child: Center(child: Text('loading ...$e'),),);
  }
  _drawClothes(Clothes clothes){
    return Column(
      children: <Widget>[
        (clothes.clothesImages !=null) ?
        Image(width: 100,height:100,image: NetworkImage(clothes.clothesImages.url)) :Container(color:Colors.black,)
         , Text(clothes.name,style: TextStyle(fontSize: 13),),
      ],
    );
     
  }
}