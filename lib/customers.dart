import 'package:flutter/material.dart';

class customers extends StatefulWidget {
  const customers({Key? key}) : super(key: key);

  @override
  State<customers> createState() => _customersState();
}

class _customersState extends State<customers> {
  var customers = [
    {'Name': 'John Smith', 'Email': ' JSH@gmail.com', 'Balance': 10000},
    {'Name': 'Jack Charlie', 'Email': 'Jack@outlook.com', 'Balance': 45000},
    {'Name': 'Madeileine Monrow', 'Email': 'mad@hotmail.com', 'Balance': 33000},
    {'Name': 'Eren Jaeger', 'Email': 'tatakae@gmail.com', 'Balance': 20300},
    {'Name': 'Elizabeth Charlie', 'Email': 'eki@gmail.com', 'Balance': 32000},
    {'Name': 'Charles William', 'Email': 'William@gmail.com', 'Balance': 10000},
    {'Name': 'Kujo Jotaro', 'Email': 'StarPlatinum@gmail.com', 'Balance': 5000}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customers'),
        centerTitle: true,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          thickness: 3.0,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Name: ${customers[index]['Name']}\nEmail: ${customers[index]['Email']}\nCurrent Balance: ${customers[index]['Balance']}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      height: 2),
                ),
              ),
            ),
          );
        },
        itemCount: customers.length,
      ),
    );
  }
}
