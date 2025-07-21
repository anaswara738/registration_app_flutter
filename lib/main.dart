import 'package:flutter/material.dart';

import 'package:registration_app_flutter/registration.dart';








void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      
      home:Registrations(),
    );
  }
}

