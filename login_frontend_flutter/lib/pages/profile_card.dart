import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String country;
  final String address;
  final String city;
  final String state;

  const ProfileCard({
    Key? key,
    required this.email,
    required this.phoneNumber,
    required this.country,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.city,
    required this.state,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(child:Padding(padding: const EdgeInsets.only(left: 425, right: 425,top: 100,bottom: 100),
    child: Card(
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),color: Colors.grey,
      child: Column( children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 10),
          Text(firstName,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(width: 6),
          Text(lastName,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold)),
        ]),

        Center(
          child: Text(
            email,
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ),

        const Divider(
          thickness: 2,
        ),
        const SizedBox(height: 10,),
       Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
           child: Row(children: [
          const Text('Phone Number: ',
              style:
              TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(phoneNumber.toString(),
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w400))
        ])),
        const SizedBox(height: 10,),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              const Text('Address : ',
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(address.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400))
            ])),
        const SizedBox(height: 10,),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              const Text('City : ',
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(city.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400))
            ])),
        const SizedBox(height: 10,),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              const Text('State :',
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(state.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400))
            ])),
        const SizedBox(height: 10,),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              const Text('Country : ',
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(country.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400))
            ])),

      ]),
    )
    )
    );
  }
}