import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/signin.dart';
import 'package:login/screens/navbar.dart';

class Profile extends StatelessWidget{
  String emailid;
  Profile({required this.emailid});

  @override
  Widget build(BuildContext context) {
    print(emailid);
    // TODO: implement build
    return Scaffold(
      drawer: NavBar(emailid:emailid),
      appBar: AppBar(
        title: Text("Welcome to Codex"),
      ),
      body: Center(
        child: Text('Contents will be update soon',style: TextStyle(fontSize: 20),),

      ),
    );
  }

}