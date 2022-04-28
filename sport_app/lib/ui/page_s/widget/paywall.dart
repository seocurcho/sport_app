import 'package:flutter/material.dart';
import 'package:sport_app/ui/mainpage/items/bodyweight.dart';
import 'package:sport_app/ui/mainpage/items/no_time.dart';

class Paywall extends StatefulWidget {
  Paywall({Key? key}) : super(key: key);

  @override
  State<Paywall> createState() => _PaywallState();
}

class _PaywallState extends State<Paywall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment')),
      body: Center(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Subscribe',
                  style: TextStyle(
                      color: Colors.pink.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'One Month Subscription',
                  style: TextStyle(
                      color: Colors.pink.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 27.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '19.99€',
                  style: TextStyle(
                      color: Colors.pink.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => noTime()));
                      }),
                      child: const Text('Buy now!')),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'One Year Subscription',
                  style: TextStyle(
                      color: Colors.pink.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 27.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '189.99€',
                  style: TextStyle(
                      color: Colors.pink.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => noTime()));
                      }),
                      child: const Text('Buy now!')),
                ]),
          )
        ],
      )),
    );
  }
}
