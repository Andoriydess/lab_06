import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset("assets/images/img2.png", height: 192, width: 192,),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'name',
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
            width: 300,
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'email',
              ),
            ),
          ),
            SizedBox(height: 20,),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,foregroundColor: Colors.white),
              onPressed: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text('Title'),
                      content: Text("subtitle"),
                    );
                  },
                )
              },
              child: const Text("Sign Up"),
            ),
            SizedBox(width:20),
            OutlinedButton(
              onPressed: () => {
                Navigator.pop(context)
              },
              child: const Text("Back"),
            ),
                ],
            ),
          ],
        ),

      ) ,
    );
  }


}