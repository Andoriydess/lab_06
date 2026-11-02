import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

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
                hintText: 'email',
              ),
            ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,foregroundColor: Colors.white),
              onPressed: () => {
                Navigator.pop(context)
              },
              child: const Text("Reset"),
            ),
          SizedBox(height: 20,),
          OutlinedButton(
            onPressed: () => {
              Navigator.pop(context)
            },
            child: const Text("Back"),
          )
          ],
        ),
      ),
    );
  }
}