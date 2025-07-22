import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:registration_app_flutter/firebase_options.dart';

import 'package:registration_app_flutter/registration.dart';








void main() async {await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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

