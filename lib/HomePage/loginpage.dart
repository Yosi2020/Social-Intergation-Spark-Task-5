import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:social_integration/api/google_signin_api.dart';

import 'package:social_integration/HomePage/homepage.dart';

class LoggedInPage extends StatelessWidget{
  final GoogleSignInAccount user;

  LoggedInPage({
    Key key,
    @required this.user
}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Logged In"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Profile",
            style: TextStyle(fontSize: 24),),
            SizedBox(height: 32,),
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(user.photoUrl,),

            ),
            SizedBox(height: 18,),
            Text("Name: " + user.displayName,
            style: TextStyle(color: Colors.black, fontSize: 20),),
            SizedBox(height: 8,),
            Text("Email: " + user.email,
            style: TextStyle(color: Colors.black, fontSize: 16),),
            SizedBox(height: 32,),
            TextButton(
                child: Text('Logout'),
                onPressed: () async {
                  await GoogleSignInApi.logout();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                      (context) => HomePage(),));
                })
          ],
        ),
      ),
    );
  }
}