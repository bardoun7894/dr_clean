import 'package:dr_clean/api/authentication.dart';
import 'package:dr_clean/exceptions/exception.dart';
import 'package:dr_clean/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dr_clean/utilities/constants.dart';

import '../clothes_screen.dart';

class LoginScreen extends StatefulWidget {
	@override
	_LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
	bool _rememberMe = false;
  final _controllerEmail = TextEditingController();
final _controllerPassword = TextEditingController();
@override
void initState() { 
  super.initState();

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

	Widget _buildForgotPasswordBtn() {
		return Container(
			alignment: Alignment.centerRight,
			child: FlatButton(
				onPressed: () => print('Forgot Password Button Pressed'),
				padding: EdgeInsets.only(right: 0.0),
				child: Text(
					'Forgot Password?',
					style: kLabelStyle,
				),
			),
		);
	}

	Widget _buildRememberMeCheckbox() {
		return Container(
			height: 20.0,
			child: Row(
				children: <Widget>[
					Theme(
						data: ThemeData(unselectedWidgetColor: Colors.white),
						child: Checkbox(
							value: _rememberMe,
							checkColor: Colors.green,
							activeColor: Colors.white,
							onChanged: (value) {
								setState(() {
									_rememberMe = value;
								});
							},
						),
					),
					Text(
						'Remember me',
						style: kLabelStyle,
					),
				],
			),
		);
	}
Authentication authentication=Authentication();
	Widget _buildLoginBtn() {
		return Container(
			padding: EdgeInsets.symmetric(vertical: 25.0),
			width: double.infinity,
			child: RaisedButton(
				elevation: 5.0,
				onPressed: ()async{
          String email=_controllerEmail.text.toLowerCase();
          String password=_controllerPassword.text ;
      await authentication.login(email, password);
      Navigator.push(context, new MaterialPageRoute(builder:(context)=>ClothesScreen()));
        }
        
        ,
				padding: EdgeInsets.all(15.0),
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(30.0),
				),
				color: Colors.white,
				child: Text(
					'LOGIN',
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
	
  Widget _buildSignInWithText() {
		return Column(
			children: <Widget>[
				Text(
					'- OR -',
					style: TextStyle(
						color: Colors.white,
						fontWeight: FontWeight.w400,
					),
				),
				SizedBox(height: 20.0),
				Text(
					'Sign in with',
					style: kLabelStyle,
				),
			],
		);
	}

	Widget _buildSocialBtn(Function onTap, AssetImage logo) {
		return GestureDetector(
			onTap: onTap,
			child: Container(
				height: 60.0,
				width: 60.0,
				decoration: BoxDecoration(
					shape: BoxShape.circle,
					color: Colors.white,
					boxShadow: [
						BoxShadow(
							color: Colors.black26,
							offset: Offset(0, 2),
							blurRadius: 6.0,
						),
					],
					image: DecorationImage(
						image: logo,
					),
				),
			),
		);
	}

	Widget _buildSocialBtnRow() {
		return Padding(
			padding: EdgeInsets.symmetric(vertical: 30.0),
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				children: <Widget>[
					_buildSocialBtn(
								() => print('Login with Facebook'),
						AssetImage(


							'assets/logos/facebook.jpg',
						),
					),
					_buildSocialBtn(
								() => print('Login with Google'),
						AssetImage(
							'assets/logos/google.jpg',
						),
					),
				],
			),
		);
	}

	Widget _buildSignupBtn() {
		return GestureDetector(
			onTap: () =>{ 
      Navigator.push(context, new MaterialPageRoute(builder:(context)=>RegisterScreen()))  
        }  ,
			child: RichText(
				text: TextSpan(
					children: [
						TextSpan(
							text: 'Don\'t have an Account? ',
							style: TextStyle(
								color: Colors.white,
								fontSize: 18.0,
								fontWeight: FontWeight.w400,
							),
						),
						TextSpan(

							text: 'Sign Up',
							style: TextStyle(
								color: Colors.white,
								fontSize: 18.0,
								fontWeight: FontWeight.bold,
							),
						),
					],
				),
			),
		);
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: AnnotatedRegion<SystemUiOverlayStyle>(
				value: SystemUiOverlayStyle.light,
				child: GestureDetector(
					onTap: () => FocusScope.of(context).unfocus(),
					child: Stack(
						children: <Widget>[
							Container(
								height: double.infinity,
								width: double.infinity,
								decoration: BoxDecoration(
									gradient: LinearGradient(
										begin: Alignment.topCenter,
										end: Alignment.bottomCenter,
										colors: [
											Color(0xFF73AEF5),
											Color(0xFF61A4F1),
											Color(0xFF478DE0),
											Color(0xFF398AE5),
										],
										stops: [0.1, 0.4, 0.7, 0.9],
									),
								),
							),
							Container(
								height: MediaQuery.of(context).size.height,
								child: SingleChildScrollView(
									physics: AlwaysScrollableScrollPhysics(),
									padding: EdgeInsets.symmetric(
										horizontal: 40.0,
										vertical: 120.0,
									),
									child: Column(
										mainAxisAlignment: MainAxisAlignment.center,
										children: <Widget>[
											Text(
												'Sign In',
												style: TextStyle(
													color: Colors.white,
													fontFamily: 'OpenSans',
													fontSize: 30.0,
													fontWeight: FontWeight.bold,
												),
											),
											SizedBox(height: 30.0),
											_buildEmailTF(),
											SizedBox(
												height: 30.0,
											),
											_buildPasswordTF(),
											_buildForgotPasswordBtn(),
											_buildRememberMeCheckbox(),
											_buildLoginBtn(),
											_buildSignInWithText(),
											_buildSocialBtnRow(),
											_buildSignupBtn(),
										],
									),
								),
							)
						],
					),
				),
			),
		);
	}
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
