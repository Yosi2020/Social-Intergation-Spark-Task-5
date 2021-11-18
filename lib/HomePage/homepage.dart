import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_integration/Facebook%20login/fb_login_page.dart';
import 'package:social_integration/api/google_signin_api.dart';
import 'package:social_integration/HomePage/loginpage.dart';


class HomePage extends StatefulWidget{

  const HomePage({Key key}):super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{

  bool _islogin = false;
  Map _userObj = {};

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Social integration"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/R.jpg",),
          SizedBox(height: 10,),
          Text("Hey there", style: Theme.of(context).textTheme.headline3,),
          SizedBox(height: 10,),
          Text("Welcome Back", style: Theme.of(context).textTheme.headline3,),
          SizedBox(height: 10,),
          Text("social integration spark foundation internship",
            style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 20,),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              minimumSize: Size(50, 50)
            ),
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              label: Text("Sign up with Google"),
              onPressed: SignIn,),
          SizedBox(height: 20,),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(50, 50)
            ),
            icon: FaIcon(
              FontAwesomeIcons.facebook,
              color: Colors.blue,
            ),
            label: Text("Sign up with Facebook"),
            onPressed: () async{
              final result = await FacebookAuth.i.login(
                  permissions: ["public_profile", "email"]
              );
              debugPrint("result = ${result.status} and ${LoginStatus.success}");
              if(result.status == LoginStatus.success){
                 final userData = await FacebookAuth.i.getUserData(
                 fields: "email,name, picture"
               );
               setState(() {
                   _userObj = userData;
                   _islogin = true;
                   if(_islogin == true){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                         (context) => FaceLoginPage(_userObj),));
               }});
            }
              else{
                debugPrint("error on data");
              }
              },
            )
        ],
      ),
    );
  }
  Future SignIn() async{
    final user = await GoogleSignInApi.login();

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
    (context) => LoggedInPage(user : user),));
  }
}