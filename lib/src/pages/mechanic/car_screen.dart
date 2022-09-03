import 'package:flutter/material.dart';

class SectionCar extends StatelessWidget {
  const SectionCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Ir atras'),
        ),
      ),
    );
  }
}
