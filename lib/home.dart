import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonAlert"),
      ),
      body: Center(
        child:ListView (children: [
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('I am in DANGER please send help!'),
                content: const Text('My location: 37.3382° N, 121.8863° W'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: Container(
            height: 250.0,
            width: 200.0,
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            )),
          ),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Come to me ASAP!'),
                content: const Text('My location: 37.3382° N, 121.8863° W'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: Container(
                height: 250.0,
                width: 200.0,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                )),
          ),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('I am OK'),
                content: const Text('My location: 37.3382° N, 121.8863° W'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: Container(
                height: 250.0,
                width: 200.0,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                )),
          ),
        ]),
      ),
    );
  }
}
