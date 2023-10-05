import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
             style: const TextStyle(
                fontSize: 160, fontWeight: FontWeight.w100 )),      
            Text('Click${ clickCounter == 1 ? '' : 's' }', style: const TextStyle( fontSize: 25 ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agrega tu lógica de botón aquí
          clickCounter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
