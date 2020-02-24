

import 'package:dr_clean/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class AreaPage extends StatefulWidget {
  @override
  _AreaPageState createState() => _AreaPageState();
}

class _AreaPageState extends State<AreaPage> {

	var location = new Location();

	Map<String, double> userLocation;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Image.asset("assets/logos/laundry_logo.png")
						,
						userLocation == null
								? CircularProgressIndicator()
								: Text("Location:" +
								userLocation["latitude"].toString() +
								" " +
								userLocation["longitude"].toString()),
						Padding(
							padding: const EdgeInsets.all(8.0),
							child: MaterialButton(
								onPressed: () {
									_getLocation().then((value) {
										setState(() {
											userLocation = value;
										});
									});
								},
								child:Image.asset("assets/logos/locate.png",height:60,width: 60,),
							),
					
						),
						RaisedButton(
							onPressed: (){
								Navigator.push(
					 context, MaterialPageRoute( builder: (context) => new LoginScreen()),
								);
							},
							color: Colors.blue,
							child: Text("Get Location", style: TextStyle(color: Colors.white),),
							
						)
					],
				),
			),
		);
	}
	Future<Map<String, double>> _getLocation() async {
		var currentLocation = <String, double>{};
		try {
			currentLocation = await location.getLocation();
		} catch (e) {
			currentLocation = null;
		}
		return currentLocation;
	}
}
