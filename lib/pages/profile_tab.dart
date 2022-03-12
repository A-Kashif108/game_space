import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
class ProfileTab extends StatefulWidget {
  final User? user;
  const ProfileTab({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  MaterialPageRoute(builder: (context) =>  MyHomePage(user: widget.user,)),
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
      ),
    );
  }
}

