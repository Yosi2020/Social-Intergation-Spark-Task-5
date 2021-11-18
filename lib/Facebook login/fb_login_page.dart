import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:social_integration/HomePage/homepage.dart';

class FaceLoginPage extends StatefulWidget{

  final Map userData;

  FaceLoginPage(this.userData);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FaceLoginPageState(this.userData);
  }
}

class FaceLoginPageState extends State<FaceLoginPage>{

  Map userData;
  FaceLoginPageState(this.userData);

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
              backgroundImage: NetworkImage(userData["picture"]["data"]["url"]),
            ),
            SizedBox(height: 18,),
            Text("Name: " + userData["name"],
              style: TextStyle(color: Colors.black, fontSize: 20),),
            SizedBox(height: 8,),
            Text("Email: " + userData["email"],
              style: TextStyle(color: Colors.black, fontSize: 16),),
            SizedBox(height: 32,),
            TextButton(
                child: Text('Logout'),
                onPressed: () async {
                  FacebookAuth.i.logOut();
                    setState(() {
                      userData = null;
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
                          (context) => HomePage(),));
                    });
                })
          ],
        ),
      ),
    );
  }
}