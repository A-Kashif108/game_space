import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_space/pages/profile_setup.dart';
import 'package:game_space/pages/sign_in.dart';

import '../services/authentication.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Center(child: Text("SignUp",
              style: TextStyle(fontSize: 28),
              )),
            ),
            const SizedBox(height:100),
            Container(
              height: 60,
              //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: const Color(0xffebe9e9), borderRadius:BorderRadius.circular(400)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    controller: _emailController,
                      decoration:const InputDecoration(hintText: '   E-Mail',
                        border: InputBorder.none,
                  ) ),
                ),
              ),

            ),
            const SizedBox(height:35),

            Container(
              height: 60,
              //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: const Color(0xffebe9e9), borderRadius:BorderRadius.circular(400)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    obscureText: true,
                    controller: _passwordController,
                      decoration:const InputDecoration(hintText: '   Password',
                        border: InputBorder.none,
                  ) ),
                ),
              ),

            ),
            const SizedBox(height:35),

            Container(
              height: 60,
              //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: const Color(0xffebe9e9), borderRadius:BorderRadius.circular(400)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    obscureText: true,
                    controller: _confirmPasswordController,
                      decoration:const InputDecoration(hintText: '  Confirm Password',
                        border: InputBorder.none,
                  ) ),
                ),
              ),
            ),
            const SizedBox(height:40),
            ElevatedButton(onPressed: (){
              AuthenticationHelper()
                  .signUp(email: _emailController.text, password: _passwordController.text)
                  .then((result) {
                   FirebaseAuth _auth = FirebaseAuth.instance;
                if (result == null) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>  ProfileSetup(user: _auth.currentUser ,)));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      result,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ));
                }
              });
            },
              child: const Text('Register', style: TextStyle(fontSize: 26)),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
              shadowColor: Colors.greenAccent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: const Size(200, 45), //////// HERE
            ), //side: BorderSide(color: Colors.red)
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
              child: const Text("Already have an account?"),
            ),
          ],
        ),
      ),
    );
  }
}
