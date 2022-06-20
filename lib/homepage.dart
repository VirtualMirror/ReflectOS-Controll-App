import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:reflectos_control_app/main.dart';

class homepage extends StatefulWidget {
  GoogleSignInAccount user;
  homepage({Key? key, required this.user}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(widget.user.photoUrl.toString()),
          ),

          Text(widget.user.email),
          Text(widget.user.displayName.toString()),

          const SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            GoogleSignIn googleSignIn = GoogleSignIn();
            googleSignIn.signOut().then((value) => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MyApp())));
          }, child: const Text("Sign Out"))
        ],
      ),
    );
  }
}
