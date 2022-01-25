import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
