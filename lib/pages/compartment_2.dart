import 'package:flutter/material.dart';

class Compartment2Page extends StatelessWidget {
  const Compartment2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Compartment 2")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(labelText: "Enter Transaction ID"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Transaction ID submission logic
            },
            child: const Text("Submit"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Generate OTP logic
            },
            child: const Text("Generate OTP"),
          ),
        ],
      ),
    );
  }
}
