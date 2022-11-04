import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/profile_form.dart';
import 'package:login/utills/color_util.dart';
import 'package:login/reusable_widgets/reusable_widget.dart';
import 'package:login/screens/signup.dart';
import 'package:login/screens/profile.dart';

class Signin extends StatefulWidget{
  const Signin ({Key? key}) : super (key:key);

  @override
  _SigninState  createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String emailid = '';
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ])),
            child: SingleChildScrollView(
              child: Padding(
              padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/avatar.png",fit: BoxFit.fitWidth,width: 180,height: 180),
                    const SizedBox(
                      height: 30,
                    ),
                    reusableTextField("Enter Email", Icons.person_outline, false,
                        _emailTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline, true,
                        _passwordTextController),
                    const SizedBox(
                      height: 25,
                    ),
                    Opacity(
                      opacity: 0.5,
                    child:GestureDetector(
                      onTap: (){
                        FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(emailid: emailid)));
                        }).onError((error, stackTrace) {
                          Text("Wrong Password");
                        });
                        emailid = _emailTextController.text;
                      },
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(95, 10, 20, 0),
                        child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
                      ),
                    ))
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account",style: TextStyle(color: Colors.white70)),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                          },
                          child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        )
                      ],
                    )
    ])
            )
        )
        )
    );

  }
}