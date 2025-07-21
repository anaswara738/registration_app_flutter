import 'package:flutter/material.dart';
import 'package:registration_app_flutter/login.dart';

class Signups extends StatefulWidget {
  const Signups({super.key});

  @override
  State<Signups> createState() => _SignupsState();
}

class _SignupsState extends State<Signups> {
  @override TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
   final formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "SignUp",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Create an account, It's free",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 60),
                Align(alignment: Alignment.topLeft, child: Text("UserName")),
                TextFormField(controller: usernamecontroller, validator: (value) {
                  if(value==null||value.isEmpty){
                    return "username is required";}
                    if(value.length!=8){ 
                      return"username must be atleast 8 characters";
                    }
                },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Align(alignment: Alignment.topLeft, child: Text("Email")),
                TextFormField(controller: emailcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "email is required";
                    }
                    if (!value.contains("@")) {
                      return "@ is required";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Align(alignment: Alignment.topLeft, child: Text("Password")),
                TextFormField(controller: passwordcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "password is required"; 
                     }  if(value!=8){
                      return"password must be of 8 characters";
                     }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Confirm Password"),
                ),
                TextFormField(controller:confirmpasswordcontroller ,validator: (value) {
                  if(value==null||value.isEmpty);{ 
                    return "confirm your password";
                  }
                  if(value!=passwordcontroller.text){
                    return "Password is not the same";
                  }
                  if(value!=8){
                    return "Password must be of 8 characters";
                  }
             },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {},
                    child: Text("Sign Up"),
                  ),
                ),
                SizedBox(height: 10),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Logins()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
