import 'package:flutter/material.dart';
import 'package:registration_app_flutter/services.dart';

class Forgot extends StatefulWidget {
  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  TextEditingController emailcontroller=TextEditingController();

  final formkey=GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: formkey,
        child: Center(
          child: Column(
            children: [SizedBox(height: 40,), 
            Text("Forgot password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
          
              SizedBox(height: 40),
              Align(alignment: Alignment.topLeft, child: Text("Email")),
              TextFormField(
                controller: emailcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "email is required";
                  }
                  if (!value.contains("@")) {
                    return "@ is required";
                  }
                  return null;
                },
        
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),SizedBox(height: 40),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        side: BorderSide(color: Colors.black),
                      ),
                      onPressed: () {if(formkey.currentState!.validate()){
                        forgotpass(Email: emailcontroller.text, context: context);
                      }},
                      child: Text("Sent link"),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
