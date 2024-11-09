import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                child: Text(
                  "Click",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  
                ),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              Text(
                "Counter: $counter",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
