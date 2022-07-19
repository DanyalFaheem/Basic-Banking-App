import 'package:flutter/material.dart';

class makeTransaction extends StatefulWidget {
  const makeTransaction({Key? key}) : super(key: key);

  @override
  State<makeTransaction> createState() => _makeTransactionState();
}

class _makeTransactionState extends State<makeTransaction> {
  var customers = [
    {'Name': 'John Smith', 'Email': ' JSH@gmail.com', 'Balance': 10000},
    {'Name': 'Jack Charlie', 'Email': 'Jack@outlook.com', 'Balance': 45000},
    {'Name': 'Madeileine Monrow', 'Email': 'mad@hotmail.com', 'Balance': 33000},
    {'Name': 'Eren Jaeger', 'Email': 'tatakae@gmail.com', 'Balance': 20300},
    {'Name': 'Elizabeth Charlie', 'Email': 'eki@gmail.com', 'Balance': 32000},
    {'Name': 'Charles William', 'Email': 'William@gmail.com', 'Balance': 10000},
    {'Name': 'Kujo Jotaro', 'Email': 'StarPlatinum@gmail.com', 'Balance': 5000}
  ];
  var nameTo = 'Receiver', nameFrom = 'Sender', amount;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make a new Transaction'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DropdownButtonFormField(
              iconEnabledColor: Colors.red,
              hint: Text('Sender'),
              items: customers.map((customers) {
                return DropdownMenuItem(
                    value: customers['Name'],
                    child: Text(customers['Name'].toString()));
              }).toList(),
              icon: Icon(Icons.person),
              // value: nameFrom,
              onChanged: (_) {
                print(nameFrom);
              },
            ),
            DropdownButtonFormField(
              iconEnabledColor: Colors.blue,
              hint: Text('Receiver'),
              items: customers.map((customers) {
                return DropdownMenuItem(
                    value: customers['Name'],
                    child: Text(customers['Name'].toString()));
              }).toList(),
              // value: nameTo,
              icon: Icon(Icons.person),
              onChanged: (_) {},
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.money),
                iconColor: Colors.green,
                hintText: 'Enter the Transaction Amount',
                labelText: 'Amount',
              ),
              keyboardType: TextInputType.number,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/success');
          },
          child: Icon(Icons.check)),
    );
  }
}
