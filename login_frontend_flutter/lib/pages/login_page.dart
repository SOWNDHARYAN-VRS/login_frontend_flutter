import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/my_text_field.dart';
import '../services/auth_service.dart';



class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
   final AuthService authService= AuthService();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white70,
      body: 
      SafeArea(child: Center(child: Column(
          children: [
            const SizedBox(height: 140,),
        // const Icon(
        //     Icons.lock,
        //   size: 90,
        //   color: Colors.black,
        // ),

            Text(
              'LOGIN',
              style: GoogleFonts.monoton(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Text("welcome you've been missed !",
                style: (TextStyle(color: Colors.black,fontSize: 15,)),
      ),
            const SizedBox(height: 25),
            MyTextField(
              hintText: "username",
              obscureText: false,
              controller: userController,
            ),

            const SizedBox(height: 15),

            MyTextField(
              
              hintText: "password",
              obscureText: true,
              controller: passwordController,

            ),
            const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 198), // Adjust button size
            ),
            onPressed: () {},
            child:const Text("Login",
              style: TextStyle(color: Colors.black),
            )
            ,),
            const SizedBox(height: 10),
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context, "/register_page"
              );
            },

            child: const Text.rich(
              TextSpan(
                text: "Not a user ? ",
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: "Register now",
                    style: TextStyle(color: Colors.blue),

                  ),
                ],
              ),
            )

        )
  ]
      )
    ,),
    )
    );
  }
}

