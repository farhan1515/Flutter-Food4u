import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food4u/services/auth/auth_gate.dart';
//import 'package:food4u/services/auth/login_or_register.dart';
import 'package:food4u/firebase_options.dart';
import 'package:food4u/models/restaurants.dart';
//import 'package:food4u/pages/login_page.dart';
//import 'package:food4u/pages/register_page.dart';
import 'package:food4u/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  runApp(
    MultiProvider(providers:[
      ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    
  ),

  ChangeNotifierProvider(
    create: (context) => Restaurant(),
    
  )
    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
