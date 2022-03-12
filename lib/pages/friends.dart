import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_space/components/friend.dart';
class FriendsList extends StatefulWidget {
  final User? user;
  const FriendsList({Key? key, required this.user}) : super(key: key);

  @override
  State<FriendsList> createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("UserData")
              .doc(widget.user?.uid).collection("Friends").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData){
              return ListView(
                scrollDirection: Axis.vertical,
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                  return  Friend(name: data['name'],
                      username: data['username'], status: 'status',
                      uid: widget.user?.uid , friend: true);
                }).toList(),
              );
            }
            return const Center(child: CircularProgressIndicator(),);
          }),
    );
  }
}
