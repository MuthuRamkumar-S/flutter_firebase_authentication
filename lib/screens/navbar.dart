import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/performance.dart';
import 'package:login/screens/profile_form.dart';
import 'package:login/screens/profile_view.dart';
import 'package:login/screens/signin.dart';

class NavBar extends StatelessWidget {
  String emailid;
  NavBar({required this.emailid});
  @override
  Widget build(BuildContext context) {
    print(emailid);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('Welcome'), accountEmail: null,
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset("assets/images/avatar.png",
              width: 90,
              height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
            decoration: BoxDecoration(
              color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                     'https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg'
                  ),
                  fit: BoxFit.cover,
                )
              )
            ),

          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () async {
                  DocumentSnapshot<Map<String, dynamic>> document = await FirebaseFirestore
                  .instance
                  .collection('profile')
                  .doc(emailid)
                  .get();
              if(document.exists)
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Profile_view(emailid: emailid)));
                  print(emailid);
                  print('exists');
                }
              else {
                print(emailid);
                print('not exists');
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Profile_form(emailid: emailid,)));
              }
              },
          ),
          ListTile(
            leading: Icon(Icons.add_chart_outlined),
            title: Text('Performance'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Performance()))
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Feed'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Performance()))
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          Container(
            child: Align(
                alignment: Alignment(0,0.9),
                child: ElevatedButton(
                  child: Text("Log Out"),
                  onPressed: (){
                    FirebaseAuth.instance.signOut().then((value) {
                      print("Signed out");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signin()));
                    });
                  },
                )
            ),
          ),
        ],
      ),
    );
  }
  // Future<bool> isDocumentExists(String emailid) async{
  //   DocumentSnapshot<Map<String, dynamic>> document = await FirebaseFirestore
  //       .instance
  //       .collection('Profile')
  //       .doc(emailid)
  //       .get();
  //   if(document.exists)
  //     {
  //       return true;
  //     }
  //   else{
  //     return false;
  //   }
  // }
}