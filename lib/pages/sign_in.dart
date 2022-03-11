import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Center(child: Text("Sign-In",
                style: TextStyle(fontSize: 28),
              )),
            ),
            SizedBox(height:100),
            Container(
              height: 60,
              //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: Color(0xffebe9e9), borderRadius:BorderRadius.circular(400)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                      decoration:InputDecoration(hintText: '   E-Mail',
                        border: InputBorder.none,
                      ) ),
                ),
              ),

            ),
            SizedBox(height:35),

            Container(
              height: 60,
              //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: Color(0xffebe9e9), borderRadius:BorderRadius.circular(400)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                      decoration:InputDecoration(hintText: '   Password',
                        border: InputBorder.none,
                      ) ),
                ),
              ),

            ),
            SizedBox(height:35),

            ElevatedButton(onPressed: (){
              //Navigator.push(
                //context,
                //MaterialPageRoute(builder: (context) => const SignIn()),
            //  );
            },
              child: Text('Sign-In', style: TextStyle(fontSize: 26)),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(200, 45), //////// HERE
              ), //side: BorderSide(color: Colors.red)
            ),
          ],
        ),
      ),
    );
  }
}
