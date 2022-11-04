import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/reusable_widgets/reusable_widget.dart';
import 'package:login/utills/color_util.dart';
import 'package:login/screens/profile.dart';

class Signup extends StatefulWidget
{
  const Signup ({Key? key}) : super (key:key);

  @override
  _SignupState  createState() => _SignupState();

}
class _SignupState extends State<Signup>
{
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
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
          ]
      )
    ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/avatar.png",fit: BoxFit.fitWidth,width: 180,height: 180),
                const SizedBox(
                height: 30,
                ),
            reusableTextField("Enter Your Name", Icons.account_circle, false, _nameTextController),
              const SizedBox(
                height: 20
              ),
            reusableTextField("Enter UserName", Icons.person_outline, false,_userTextController),
              const SizedBox(
                height: 20,
              ),
            reusableTextField("Enter Email Id", Icons.add_card, false, _emailTextController),
              const SizedBox(
                height: 20,
              ),
            reusableTextField("Enter Password", Icons.lock_outline, true,_passwordTextController),
              const SizedBox(
                height: 25,
                ),
            Opacity(
              opacity: 0.5,
              child:GestureDetector(
                onTap: (){
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value){
                    print('created new account');
                    String emailid = _emailTextController.text;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(emailid:emailid)));});
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
                  child: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
                ),
            )
          )),
      ]),
    ))));
  }

}