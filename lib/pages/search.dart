

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game_space/components/friend.dart';

class SearchBar extends StatefulWidget {
  User? user;
   SearchBar({Key? key,required this.user}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search',
                    border: InputBorder.none),
              ),
            )
          ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("UserData").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData){
                return ListView(
                  scrollDirection: Axis.vertical,
                  children: snapshot.data!.docs.map((
                      DocumentSnapshot document) {
                    Map<String, dynamic> data = document.data()! as Map<
                        String,
                        dynamic>;
              if (document.id != widget.user?.uid) {
                return Friend(name: data["name"],
                  username: data["username"],
                  status: "status",
                  uid: widget.user?.uid,
                  friend: false,
                );
              }
                    return SizedBox(height: 0, width: 0,);
                  }).toList(),
                );

            }
            return const Center(child: CircularProgressIndicator(),);
          }),
    );
  }
}
