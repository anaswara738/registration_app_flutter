import 'package:flutter/material.dart';

class registrations extends StatelessWidget {
  const registrations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Image(image: AssetImage("assets/image.png")),
            SizedBox(height: 40),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 96, 125, 139),
                  foregroundColor: const Color.fromARGB(221, 0, 0, 0),
                ),
                onPressed: () {},
                child: Text("login"),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 96, 125, 139),
                  foregroundColor: const Color.fromARGB(221, 0, 0, 0),
                ),
                onPressed: () {},
                child: Text("Sign up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
