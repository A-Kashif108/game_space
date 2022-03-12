

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
              Column(
                children: [
                  Container(height:70,width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(color:Colors.grey.shade400),
                    child:Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width:2),

                        const CircleAvatar(
                          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/0/07/BGMI.jpg'),
                          radius: 30,
                        ),
                        SizedBox(width:90),
                     Text('BGMI',style: TextStyle(fontSize: 30),),
                        SizedBox(width:90),
                        ElevatedButton(onPressed: (){}, child: Text('Play')),
                      ],
                    ),
                  ),
                  Container(height:70,width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(color:Colors.grey.shade400),
                    child:Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width:2),

                        Align(
                          alignment: Alignment.centerLeft,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNIMhGxwF6cZK_BqT_N7cML-ZPYDPOOkBRDw&usqp=CAU'),
                            radius: 30,
                          ),
                        ),
                        SizedBox(width:60),
                     Text('Smashkart',style: TextStyle(fontSize: 30),),
                        SizedBox(width:56),
                        Align(
                            alignment:Alignment.centerRight,
                            child: ElevatedButton(onPressed: (){}, child: Text('Play'))),
                      ],
                    ),
                  ),
                  Container(height:70,width:MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(color:Colors.grey.shade400),
                    child:Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(width:2),
                        const CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNxrSkTO6GYd_YSqvJTfhMS8RDCtxEVXUxKk1RYv-AL2KAlOugruN5cRZ5spcVCn_nekE&usqp=CAU'),
                          radius: 30,
                        ),
                        SizedBox(width:95),
                     Text('COD',style: TextStyle(fontSize: 30),),
                        SizedBox(width:99),
                        ElevatedButton(onPressed: (){}, child: Text('Play')),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

