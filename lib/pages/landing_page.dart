import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Stack(
          children: [
            // Background Circle Decoration
            Align(
              alignment: const AlignmentDirectional(-0.13, -0.71),
              child: Container(
                width: 280,
                height: 280,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFF6BB79), Colors.blue, Colors.blue],
                    stops: [0, 1, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Logo (Now Larger)
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 1),
                child: SizedBox(
                  width: 550, // Increased width
                  height: 450, // Increased height
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // App Name
            Align(
              alignment: Alignment.center,
              child: Text(
                'PaRECEIVED',
                style: TextStyle(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 48,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black54,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 2.0,
                    ),
                  ],
                ),
              ),
            ),

            // Start Button
            Align(
              alignment: const Alignment(0, 0.62),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/selection');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF37E21),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  elevation: 10,
                ),
                child: const Text(
                  'START',
                  style: TextStyle(
                    fontFamily: 'Inter Tight',
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),

            // Plane Image (Top Right)
            Align(
              alignment: const AlignmentDirectional(0.94, -1.11),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/plane.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
