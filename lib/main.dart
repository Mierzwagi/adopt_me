import 'package:adopt_me/view/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppPet());
}

class AppPet extends StatelessWidget {
  const AppPet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const appHome(),
    );
  }
}
