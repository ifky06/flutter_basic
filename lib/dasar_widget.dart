import 'package:flutter/material.dart';

class DasarWidget extends StatelessWidget {
  const DasarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dasar Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/1.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
