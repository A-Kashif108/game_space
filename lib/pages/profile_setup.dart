import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_space/pages/home_page.dart';

class ProfileSetup extends StatefulWidget {
  final User? user;
   const ProfileSetup({Key? key,required this.user}) : super(key: key);

  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _enrollNoController = TextEditingController();

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
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Center(child: Text("ProfileSetup",
                style: TextStyle(fontSize: 28),
              )),
            ),
            const SizedBox(height: 40,),
            const CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
              radius: 65,
            ),
            const SizedBox(height:60),
            Container(
              height: 60,
              //padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(color: const Color(0xffebe9e9), borderRadius:BorderRadius.circular(400)),
              child:  Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    controller: _usernameController,
                      decoration:const InputDecoration(hintText: '   Username',
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
              child:  Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    controller: _nameController,
                      decoration:const InputDecoration(hintText: '   Name',
                        border: InputBorder.none,
                      ) ),
                ),
              ),

            ),
            const SizedBox(height:35),


            const SizedBox(height:40),
            ElevatedButton(onPressed: (){
              FirebaseFirestore.instance.collection('UserData').doc(widget.user?.uid).set({
                "name" : _nameController.text,
                "username" : _usernameController.text,
                "email" : widget.user?.email,
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            }, child: const Text('Go', style: TextStyle(fontSize: 26)),
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
          ],
        ),
      ),
    );
  }
}
