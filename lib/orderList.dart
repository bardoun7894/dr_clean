import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}
class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text("Basket"),
			),
body: Stack(
	 children: <Widget>[
		 ListView(
			 children: <Widget>[
           Divider( height: 20 , thickness: 2,color: Colors.blueGrey),
				 Row(
					 mainAxisAlignment: MainAxisAlignment.spaceBetween,
					 children: <Widget>[
						 Text("   Washup & Fold",style: TextStyle( color: Colors.black54,fontWeight: FontWeight.w900),),
						 Row(children: <Widget>[
							 Icon(Icons.edit,color: Colors.cyan),
							 Icon(Icons.delete,color: Colors.redAccent),
						 ],),
					 ],
				 ),
			  Divider( height: 20 , thickness: 2,color: Colors.blueGrey),
				 Container(
					 width: MediaQuery.of(context).size.width,
					 height:100,
					 child:
					 ListView(
						 children: <Widget>[
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[
										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),
									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[
										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),
									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[
										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),
									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[
										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),
									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[
										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),

									 ],
								 ),),
						 ],
					 ),
				 ),
				
         Padding(padding: EdgeInsets.only(top: 5),),
         Divider( height: 20 , thickness: 2,color: Colors.blueGrey),
				 Row(
					 mainAxisAlignment: MainAxisAlignment.spaceBetween,
					 children: <Widget>[
						 Text("   Washup & Dry",style: TextStyle( color: Colors.black54,fontWeight: FontWeight.w900),),
						 Row(children: <Widget>[
							 Icon(Icons.edit,color: Colors.cyan),
							 Icon(Icons.delete,color: Colors.redAccent),
						 ],),

					 ],
				 ),
				 Divider( height: 20 , thickness: 2,color: Colors.blueGrey),
				 Container(
					 width: MediaQuery.of(context).size.width,
					 height: 100,
					 child:
					 ListView(
						 children: <Widget>[
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[
										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),
									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[

										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),

									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[

										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),

									 ],
								 ),),
						 ],

					 )
					 ,
				 ),
			     Padding(padding: EdgeInsets.only(top: 5),),
         Divider( height: 20 , thickness: 2,color: Colors.blueGrey),
				 Row(
					 mainAxisAlignment: MainAxisAlignment.spaceBetween,
					 children: <Widget>[
						 Text("   Washup & Iron",style: TextStyle( color: Colors.black54,fontWeight: FontWeight.w900),),
						 Row(children: <Widget>[
							 Icon(Icons.edit,color: Colors.cyan),
							 Icon(Icons.delete,color: Colors.redAccent),
						 ],),

					 ],
				 ),
				 Divider( height: 20 , thickness: 2,color: Colors.blueGrey),
				 Container(
					 width: MediaQuery.of(context).size.width,
					 height: 80,
					 child:
					 ListView(
						 children: <Widget>[
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[
										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),
									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[

										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),

									 ],
								 ),),
							 Padding(padding: EdgeInsets.all(10),
								 child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
									 children: <Widget>[

										 Text("2 X T-shirt ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text(" RM 10.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),),
										 Text("RM 20.00",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),),

									 ],
								 ),),
						 ],

					 )
					 ,
				 ),
			    Divider( height: 1,thickness: 2,color: Colors.blueGrey),
          Container(
            height: 50,
            color: Color(0XFFF2F5FF),
            child:Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left:280)),
                Text("Total:",style: TextStyle(color:Color(0XFF5F8CFF),fontWeight: FontWeight.w900),)
              , Padding(padding: EdgeInsets.only(left:28)),
                Text("RM 270",style: TextStyle(color:Colors.red,fontWeight: FontWeight.w900,),)
            
              ],
            )
            ,
          )
				 ,
				 Divider( height: 1 , thickness: 2,color: Colors.blueGrey),
			 ],
		 ),
     Positioned(
       bottom: 10,
      left: 50,
       child:Center(
                child: Container(
         decoration: BoxDecoration(
          color:Colors.blue,
          borderRadius: BorderRadius.circular(30),),
          width:300,
          height:50,
         child:Center(
           child:Text("Order",style: TextStyle(color:Colors.white,fontSize: 18),),
         )
           
      
          ),
       ),)
	
	 ],
),
		);
  }
}
