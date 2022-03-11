import 'package:flutter/material.dart';
class FriendsList extends StatefulWidget {
  const FriendsList({Key? key}) : super(key: key);

  @override
  State<FriendsList> createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                        radius: 40,
                      ),
                      SizedBox(height: 10, width: 20,),
                      Column(
                        children: [
                          Text(' Ayush Patidar', style: TextStyle(fontSize: 20)),
                          Text(' @taatar_noobie', style: TextStyle(fontSize: 18)),
                          Text('Playing BGMI', style: TextStyle(fontSize: 18)),
                        ],
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
