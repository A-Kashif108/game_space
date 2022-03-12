import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Friend extends StatefulWidget {
  final String name;
  final String username;
  final String status;

  const Friend({Key? key,required  this.name, required this.username
    , required this.status}) : super(key: key);

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                radius: 40,
              ),
              const SizedBox(height: 10, width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name, style: TextStyle(fontSize: 20)),
                  Text(widget.username, style: TextStyle(fontSize: 18)),
                  Text(widget.status, style: TextStyle(fontSize: 18)),
                ],
              ),
              SizedBox(height: 10, width: 40,),
              Container(
                alignment: Alignment.topCenter,
                child: ElevatedButton(onPressed: (){},
                    child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                    elevation: 3,
                    shape: CircleBorder(//////// HERE
                  ),
                    ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
