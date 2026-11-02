import 'package:flutter/material.dart';
import './sign_up_screen.dart';
import './password_recovery_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
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
              child: const Text("Login"),
            ), //Login
            SizedBox(width:20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,foregroundColor: Colors.white),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                  (context) => const SignUpScreen() )
                )
              },
              child: const Text("Sing Up"),
            ), // Sing Up
          ],
        ),
          SizedBox(height: 20,),
          TextButton(
            style: TextButton.styleFrom(overlayColor: Colors.grey),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context) => const PasswordRecoveryScreen() )
              )
            },
            child: const Text('Forgot Password'),
          ),
      ],
      ),
      ),
    );
  }
}