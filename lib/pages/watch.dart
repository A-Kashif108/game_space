import 'package:flutter/material.dart';
class WatchStream extends StatefulWidget {
  const WatchStream({Key? key}) : super(key: key);

  @override
  State<WatchStream> createState() => _WatchStreamState();
}

class _WatchStreamState extends State<WatchStream> {
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
            ),
          )
      ),
    );
  }
}
