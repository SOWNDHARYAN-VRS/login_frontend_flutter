import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/User.dart';

class SecondTab extends StatelessWidget {
  final List<User> users;

  SecondTab({required this.users});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
      ),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Card(
          // Customize the card appearance as needed
          child: ListTile(
            title: Text('Name: ${user.email} ${user.firstName}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mobile Number: ${user.mobileNumber}'),
                Text('Address: ${user.address}'),
                Text('City: ${user.city}'),
                Text('State: ${user.state}'),
                Text('Country: ${user.Country}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
