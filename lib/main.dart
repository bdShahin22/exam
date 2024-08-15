import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const TextStylingSnackbar(),
    );
  }
}

class TextStylingSnackbar extends StatelessWidget {
  const TextStylingSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            // Subtitle
            const Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // TextButton with Snackbar
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('You clicked the button!'),
                  ),
                );
              },
              child: const Text('Click Me'),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to',style: TextStyle(
                  fontSize: 18
                ),),
                Text(' Flutter!',style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
