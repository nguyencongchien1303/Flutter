import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  final String name;
  final int old;

  const MyApp({Key key, this.name, this.old}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _email = '';
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("this is AppBar"),
        actions: [
          IconButton(
              icon: Icon(Icons.search), color: Colors.red, onPressed: () {}),
          IconButton(icon: Icon(Icons.car_rental), onPressed: () {})
        ],
      ),
      body: buildCenter(),
    ));
  }

  Center buildCenter() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: emailEditingController,
              onChanged: (text) {
                setState(() {
                  _email = text;
                });
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8))),
                  labelText: "Enter your email"),
            ),
          ),
          Container(
            child: Text("$_email"),
          )
        ],
      ),
    );
  }
}
