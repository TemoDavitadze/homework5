import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OtherPage1())
                  );
                },
                child: Text("Go OtherPage1")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OtherPage2())
                  );
                },
                child: Text("Go OtherPage2"))
          ],
        )
    );
  }
}

class OtherPage1 extends StatelessWidget {
  const OtherPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another page"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Text("Other Page"),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                  "Go Back",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  )
              ))
        ],
      ),
    );
  }
}

class OtherPage2 extends StatelessWidget {
  const OtherPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another page"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Text("Other Page"),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                  "Go Back",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  )
              ))
        ],
      ),
    );
  }
}