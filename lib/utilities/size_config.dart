import 'package:flutter/material.dart';
enum ScreenType{
  Small,Medium,Large 
}
class SizeConfig{

BuildContext context;
MediaQuery mediaQuery;
double screenWidth;
double screenHeight;
ScreenType screenType;

SizeConfig(BuildContext context){
   screenWidth=MediaQuery.of(context).size.width;
   screenHeight=MediaQuery.of(context).size.height;
   _setSize();
}
void _setSize(){
if(this.screenWidth >=320 && this.screenWidth >=375 ){
  this.screenType=ScreenType.Small;
}
if(this.screenWidth >=375 && this.screenWidth <414 ){
  this.screenType=ScreenType.Medium;
}
if(this.screenWidth >=414   ){
  this.screenType=ScreenType.Large;
}
 

}

}