import 'package:flutter/material.dart';
import 'package:game_space/pages/sign_up.dart';
class frontend extends StatelessWidget {
  const frontend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 300,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage : const AssetImage('images/logo.png'),
                  radius: 90,
                ),

              ],
            ),
            SizedBox(height: 70,),
            ElevatedButton(onPressed: (){ Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SignUp()),
            );},
              child: const Text('Go', style: TextStyle(fontSize: 26)),
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
          ],
        ),
      ),
    );
  }
}
