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
              width: 300,
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter email',
              ),
            ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
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