import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/my_text_field.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(padding: const EdgeInsets.all(24), child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'REGISTER',
            style: GoogleFonts.monoton(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(margin: const EdgeInsets.all(12), child: Column(
              children: [
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: email,
                  hintText: "Email",
                  obscureText: false,
                ),
                ),
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: firstName,
                  hintText: "First Name",
                  obscureText: false,
                ),
                ),
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: lastName,
                  hintText: "Last Name",
                  obscureText: false,
                ),
                ),
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: phoneNumber,
                  hintText: "Phone number",
                  obscureText: false,
                ),
                ),
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: address,
                  hintText: "Address",
                  obscureText: false,
                ),
                ),
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: city,
                  hintText: "City",
                  obscureText: false,
                ),
                ),
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: state,
                  hintText: "State",
                  obscureText: false,
                ),
                ),
                Padding(padding: const EdgeInsets.all(12), child:  MyTextField(
                  controller: country,
                  hintText: "Country",
                  obscureText: false,
                ),
                ),

              ])
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 142), // Adjust button size
            ),
            onPressed: () {
              // todo: Call register endpoint
            },
            child:const Text("Register",
              style: TextStyle(color: Colors.black),
            )
            ,),

        ],
      ),
    ),)
          )
        ],

    ),
    );
  }
}
