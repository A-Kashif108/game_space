import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:game_space/pages/sign_in.dart';
class ProfileSetup extends StatefulWidget {
  const ProfileSetup({Key? key}) : super(key: key);

  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
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
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Center(child: Text("ProfileSetup",
                style: TextStyle(fontSize: 28),
              )),
            ),
            SizedBox(height: 40,),
            CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
              radius: 65,
            ),
            SizedBox(height:60),
            Container(
              height: 60,
              //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: Color(0xffebe9e9), borderRadius:BorderRadius.circular(400)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                      decoration:InputDecoration(hintText: '   Username',
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
                      decoration:InputDecoration(hintText: '   Name',
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
                      decoration:InputDecoration(hintText: '  Enrollment no.',
                        border: InputBorder.none,
                      ) ),
                ),
              ),
            ),
            SizedBox(height:40),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignIn()),
              );
            }, child: Text('Go', style: TextStyle(fontSize: 26)),
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
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
