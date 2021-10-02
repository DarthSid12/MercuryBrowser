// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:frontend/widgets/searchModule.dart';

void main() {
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mercury',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MercuryBrowser(title: 'mercury'),
    );
  }
}

class MercuryBrowser extends StatefulWidget {
  const MercuryBrowser({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MercuryBrowser> createState() => _MercuryBrowserState();
}

class _MercuryBrowserState extends State<MercuryBrowser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(height: 600, width: 1000, child: SearchModule()),
        ));
  }
}
