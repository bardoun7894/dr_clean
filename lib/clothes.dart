import 'package:dr_clean/orderList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clothes extends StatefulWidget {
  @override
  _ClothesState createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  int qty = 0;
  int totalPrice=0;
  int price =10;

  @override
  void initState() {
    super.initState();
  }
  @override
  increaseOrder() {


    setState(() {
      qty++;
			int result=qty*price;
			totalPrice =result+totalPrice;
    });
  }
   decreaseOrder() {

    setState(() {
			int result=qty*price;
    	if(qty==0){
    		return;
			}
			qty--;
    	totalPrice =result+totalPrice ;


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("                   Wash & Fold"),
        //		flexibleSpace: Icon( Icons.menu ,color: Colors.white,	),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 12,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(
                          left: 24,
                          right: 24,
                          bottom: 8,
                        ),
                        child: Row(
                          children: <Widget>[

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  child: Image.asset(
                                    "assets/clothes/jacket.png",
                                    height: 80,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(24)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Jacket",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              decreaseOrder();
                                            },
                                            child: Container(
                                              height: 48,
                                              margin: EdgeInsets.all(2),
                                              child: Center(
                                                child: Text(
                                                  "-",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 30),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.blueGrey[100]),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "$qty",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueAccent[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: InkWell(
                                            onTap: () {
                                              increaseOrder();
                                            },
                                            child: Container(
                                              height: 48,
                                              margin: EdgeInsets.all(2),
                                              child: Center(
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.blueGrey[100]),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 60),
                                  ),
                                  Text("Price",style: TextStyle(fontWeight: FontWeight.w600),),
                                  Text(
                                    "RM $price",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(
                          left: 24,
                          right: 24,
                          bottom: 8,
                        ),
                        child: Row(
                          children: <Widget>[

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  child: Image.asset(
                                    "assets/clothes/pants.png",
                                    height: 80,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(24)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Jacket",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueAccent[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 60),
                                  ),
                                  Text(
                                    "RM $price",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(
                          left: 24,
                          right: 24,
                          bottom: 8,
                        ),
                        child: Row(
                          children: <Widget>[

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  child: Image.asset(
                                    "assets/clothes/tshirt.png",
                                    height: 80,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(24)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Jacket",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueAccent[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 60),
                                  ),
                                  Text(
                                    "RM $price",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(
                          left: 24,
                          right: 24,
                          bottom: 8,
                        ),
                        child: Row(
                          children: <Widget>[

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  child: Image.asset(
                                    "assets/clothes/hijab.png",
                                    height: 80,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(24)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Jacket",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueAccent[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 60),
                                  ),
                                  Text(
                                    "RM $price",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(
                          left: 24,
                          right: 24,
                          bottom: 8,
                        ),
                        child: Row(
                          children: <Widget>[

                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Container(
                                  child: Image.asset(
                                    "assets/clothes/pants.png",
                                    height: 80,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(24)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Jacket",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueAccent[100]),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 48,
                                            margin: EdgeInsets.all(2),
                                            child: Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.blueGrey[100]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 60),
                                  ),
                                  Text(
                                    "RM $price",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        color: Colors.grey,
                        height: 10,
                        thickness:.25,
                      ),
                      Row(
												mainAxisAlignment: MainAxisAlignment.end,
												children: <Widget>[
													Text("$qty items added .",style: TextStyle(fontSize:10,color: Colors.blue,fontWeight: FontWeight.w600),),
													Padding(padding:EdgeInsets.only(left:30),),
													InkWell(
														onTap: (){
															Navigator.push(context, MaterialPageRoute(builder: (context) => OrderList()));

														},
													  child: Container(
													  	height: 40,
													  	width:140,
													  	child: Center(child: Text("Added to Basket",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800
													  			,color:Colors.white),),),
													  	decoration: BoxDecoration(
													  		borderRadius: BorderRadius.circular(12),
													  		color: Colors.blue,
													  	),
													  ),
													),
													Padding(padding:EdgeInsets.only(left:10),),
													Text(
														"Total :",
														style: TextStyle(
																fontSize: 15, fontWeight: FontWeight.bold),
													),
													Text(
														" RM $totalPrice",
														style: TextStyle(color: Color(0Xff960030),
																fontSize: 14,fontWeight:FontWeight.w900),
													),
													Padding(padding:EdgeInsets.only(left:10),),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
