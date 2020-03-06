import 'package:flutter/material.dart';

import 'package:dr_clean/utilities/constants.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 final _controllerEmail = TextEditingController();
final _controllerPassword = TextEditingController();

  	Widget _buildFirstNameTF() {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Text(
					'Email',
					style: kLabelStyle,
				),
				SizedBox(height: 10.0),
				Container(
					alignment: Alignment.centerLeft,
					decoration: kBoxDecorationStyle,
					height: 60.0,
					child: TextField(
            controller: _controllerEmail,
						keyboardType: TextInputType.text,
						style: TextStyle(
							color: Colors.white,
							fontFamily: 'OpenSans',
						),
						decoration: InputDecoration(
							border: InputBorder.none,
							contentPadding: EdgeInsets.only(top: 14.0),
							prefixIcon: Icon(
								Icons.verified_user,
								color: Colors.white,
							),
							hintText: 'Enter your First Name',
							hintStyle: kHintTextStyle,
						),
					),
				),
			],
		);
	}

	Widget _buildRegisterBtn() {
		return Container(
			padding: EdgeInsets.symmetric(vertical: 25.0),
			width: double.infinity,
			child: RaisedButton(
				elevation: 5.0,
				onPressed: ()async{
          String email=_controllerEmail.text.toLowerCase();
          String password=_controllerPassword.text ;
   //   await authentication.login(email, password);
   //   Navigator.push(context, new MaterialPageRoute(builder:(context)=>ClothesScreen()));
        }
        
        ,
				padding: EdgeInsets.all(15.0),
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(30.0),
				),
				color: Colors.white,
				child: Text(
					'REGISTER',
					style: TextStyle(
						color: Color(0xFF527DAA),
						letterSpacing: 1.5,
						fontSize: 18.0,
						fontWeight: FontWeight.bold,
						fontFamily: 'OpenSans',
					),
				),
			),
		);
	}
	
  	Widget _buildLastNameTF() {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Text(
					'Email',
					style: kLabelStyle,
				),
				SizedBox(height: 10.0),
				Container(
					alignment: Alignment.centerLeft,
					decoration: kBoxDecorationStyle,
					height: 60.0,
					child: TextField(
            controller: _controllerEmail,
						keyboardType: TextInputType.text,
						style: TextStyle(
							color: Colors.white,
							fontFamily: 'OpenSans',
						),
						decoration: InputDecoration(
							border: InputBorder.none,
							contentPadding: EdgeInsets.only(top: 14.0),
							hintText: 'Enter your Last Name',
							hintStyle: kHintTextStyle,
						),
					),
				),
			],
		);
	}

	Widget _buildEmailTF() {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Text(
					'Email',
					style: kLabelStyle,
				),
				SizedBox(height: 10.0),
				Container(
					alignment: Alignment.centerLeft,
					decoration: kBoxDecorationStyle,
					height: 60.0,
					child: TextField(
            controller: _controllerEmail,
						keyboardType: TextInputType.emailAddress,
						style: TextStyle(
							color: Colors.white,
							fontFamily: 'OpenSans',
						),
						decoration: InputDecoration(
							border: InputBorder.none,
							contentPadding: EdgeInsets.only(top: 14.0),
							prefixIcon: Icon(
								Icons.email,
								color: Colors.white,
							),
							hintText: 'Enter your Email',
							hintStyle: kHintTextStyle,
						),
					),
				),
			],
		);
	}

	Widget _buildPasswordTF() {
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				Text(
					'Password',
					style: kLabelStyle,
				),
				SizedBox(height: 10.0),
				Container(
					alignment: Alignment.centerLeft,
					decoration: kBoxDecorationStyle,
					height: 60.0,
					child: TextField(
            controller: _controllerPassword,
						obscureText: true,
						style: TextStyle(
							color: Colors.white,
							fontFamily: 'OpenSans',
						),
						decoration: InputDecoration(
							border: InputBorder.none,
							contentPadding: EdgeInsets.only(top: 14.0),
							prefixIcon: Icon(
								Icons.lock,
								color: Colors.white,
							),
							hintText: 'Enter your Password',
							hintStyle: kHintTextStyle,
						),
					),
				),
			],
		);
	}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        child: Column(
          children: <Widget>[
_buildFirstNameTF(),
_buildLastNameTF(),
  _buildEmailTF(),
  _buildPasswordTF(),
  _buildRegisterBtn()
                
          ],
        ),
      ),
    );
  }
}