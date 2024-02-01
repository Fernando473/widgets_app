import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  final String step;
  static const String name = "buttons_screen";
  const ButtonsScreen({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(step),
      ),
      body: _ButtonsView(step: step),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    required this.step,
  });

  final String step;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        child: Wrap(
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button"))
          ],
        ),
      ),
    );
  }
}
