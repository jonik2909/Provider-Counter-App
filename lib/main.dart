import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 96, 174, 237),
          title: const Text(
            "Provider App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 30,
                style: IconButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 47, 169, 240)),
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "1",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                iconSize: 30,
                style: IconButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 47, 169, 240)),
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
