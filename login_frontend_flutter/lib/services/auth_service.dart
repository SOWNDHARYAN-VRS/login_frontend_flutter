
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




class AuthService {
  Future<void> authenticateUser(String username, String password) async {
    final response = await http.post(
      Uri.parse('http://localhost:8080/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {


    } else {
      ScaffoldMessenger.of(context as BuildContext).showSnackBar(
        const SnackBar(
          content: Text('Invalid username or password'),
          duration: Duration(seconds: 3), // Adjust the duration as needed
        ),
      );
    }
  }
}