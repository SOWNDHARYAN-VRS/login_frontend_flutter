import 'package:flutter/material.dart';
import 'package:login_frontend_flutter/pages/login_page.dart';
import 'package:login_frontend_flutter/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login_page",
      routes: {
        "/login_page":  (context) =>  LoginPage(),
        "/register_page": (context) => const RegistrationPage()
      },
    );
  }
}
