import 'package:flutter/material.dart';

class FingerprintPage extends StatelessWidget {
  const FingerprintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fingerprint Authentication")),
      body: Center(
        child: Text("Fingerprint Scanner will be here"),
      ),
    );
  }
}
