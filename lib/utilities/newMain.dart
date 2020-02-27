 
import 'package:flutter/material.dart';

import '../clothes_screen.dart';

class NewMain extends StatefulWidget {
  @override
  _NewMainState createState() => _NewMainState();
}

class _NewMainState extends State<NewMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			body: Stack(
				children: <Widget>[
					Container( width: MediaQuery.of(context).size.width,
						height: MediaQuery.of(context).size.height,
						child:Image.asset("assets/back_container.png",fit: BoxFit.fill,),),
	Column(
		children: <Widget>[
			Padding(padding: EdgeInsets.only(top: 15),),
			Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
					IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color:Colors.white,),),
					IconButton(onPressed: (){},icon: ImageIcon(new AssetImage("assets/dashboard.png",),color:Colors.white,))
				],
			),
		],
	),

Positioned(
	top: MediaQuery.of(context).size.height/2.3,
	child: Column(
		children: <Widget>[
			Padding(padding: EdgeInsets.only(top:5),),
			Image.asset("assets/wash&dry.png"),
			Padding(padding: EdgeInsets.only(top:5),),
			Image.asset("assets/wash&fold.png"),
			Padding(padding: EdgeInsets.only(top:5),),

			InkWell(
				onTap: (){
					Navigator.push(context, MaterialPageRoute(builder: (context) => ClothesScreen()));
				},
					child: Image.asset("assets/wash&iron.png"))

		],
	),

),


				],

			),
			
		);
  }
}
