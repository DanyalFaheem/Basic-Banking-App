import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  var transactions = [
    {'From': 'Kujo Jotaro', 'To': 'Eren Jaeger', 'Amount': 1000},
    {'From': 'John Smith', 'To': 'Madeleine Monrow', 'Amount': 1230}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
        centerTitle: true,
        backgroundColor: Colors.purple,
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
                  'From: ${transactions[index]['From']}\nTo: ${transactions[index]['To']}\nAmount Transferred: ${transactions[index]['Amount']}',
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
        itemCount: transactions.length,
      ),
    );
  }
}
