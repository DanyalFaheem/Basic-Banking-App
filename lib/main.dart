import 'package:app/success.dart';
import 'package:flutter/material.dart';
import 'customers.dart';
import 'transactions.dart';
import 'makeTransaction.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/customers': (context) => const customers(),
      '/transactions': (context) => const Transactions(),
      '/makeTransaction': (context) => const makeTransaction(),
      '/success': ((context) => const Successful())
    },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Basic Banking App'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Center(
              child: Text(
                'Welcome to Banking App',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, '/customers');
              },
              child: const Text(
                'View Customers',
                style: TextStyle(fontSize: 25),
              ),
            ),
            RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                Navigator.pushNamed(context, '/transactions');
              },
              child: const Text(
                'View Transactions',
                style: TextStyle(fontSize: 25),
              ),
            ),
            RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/makeTransaction');
              },
              child: const Text(
                'Make Transaction',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        )

        // floatingActionButton: IconButton(
        //   color: Colors.greenAccent,
        //   onPressed: () {},
        //   icon: Icon(Icons.money),
        //   iconSize: 40,
        // ),
        );
  }
}
