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
              SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text('Username',style: TextStyle(fontSize:16),),
                ),


              SizedBox(height:5),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child:  Text('name',style: TextStyle(fontSize:14),),
                ),
              ),
              SizedBox(height:70),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child:  Text('email-id',style: TextStyle(fontSize:22),),
                ),
              ),
              SizedBox(height:30),
              Container(height:40,width:MediaQuery.of(context).size.width,
              decoration:BoxDecoration(color:Colors.grey),
              )

            ],
          ),
        ),
      ),
    );
  }
}

