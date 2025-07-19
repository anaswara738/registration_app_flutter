import 'package:flutter/material.dart';

class Logins extends StatelessWidget {
  const Logins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(115, 44, 36, 36),
              ),
            ),

            SizedBox(height: 60),
            Align(alignment: Alignment.topLeft, child: Text("Email")),
            TextField(keyboardType: TextInputType.emailAddress),
            SizedBox(height: 40),
            Align(alignment: Alignment.topLeft, child: Text("Password")),
            TextField(keyboardType: TextInputType.visiblePassword),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 33, 150, 243),
                  foregroundColor: const Color.fromARGB(255, 249, 247, 247),
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
            Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: const Color.fromARGB(31, 0, 0, 0)),
                ),Image(image: AssetImage("assets/image3.jpg"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
