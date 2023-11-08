import "package:flutter/material.dart";
import "package:my_app/screens/welcome.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 236, 236, 236),
          secondary: const Color.fromARGB(255, 76, 145, 175),
        ),
        fontFamily: "Lato",
      ),
      home: const SafeArea(
        child: Scaffold(
          body: WelcomeScreen(),
        ),
      ),
    );
  }
}
