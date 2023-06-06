import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: Text('Lottery winning number is 5')),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 5 ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.done,
                      color: Colors.green,
                      size: 35,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Congratulations.\nYour number is $x,\nYou have won the lottery.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ) :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 35,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Better luck next time.\nYour number is $x,\ntry again.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            setState(() {

            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
