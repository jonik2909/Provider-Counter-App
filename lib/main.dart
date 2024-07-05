import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/counter_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CounterProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);

    final count = counter.count;

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
                onPressed: () => counter.decrement(),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '${count}',
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
                onPressed: () => counter.increment(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
