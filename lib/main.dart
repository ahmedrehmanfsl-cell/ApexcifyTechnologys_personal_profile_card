import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0F2027),
                Color(0xFF203A43),
                Color(0xFF2C5364),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage('assets/images/Profile.jpeg'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Ahmed Rehman',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'FLUTTER APP DEVELOPER',
                      style: TextStyle(
                        fontFamily: 'Source Sans 3',
                        fontSize: 20,
                        color: Colors.blueGrey.shade100,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 22),
                    Container(
                      width: 220,
                      height: 1,
                      color: Colors.white38,
                    ),
                    const SizedBox(height: 28),
                    _buildInfoCard(
                      icon: Icons.phone_rounded,
                      text: '+92 34567910',
                    ),
                    const SizedBox(height: 16),
                    _buildInfoCard(
                      icon: Icons.email_rounded,
                      text: 'yahmial@email.com',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.92),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFF203A43),
          size: 30,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Source Sans 3',
            fontSize: 22,
            color: Color(0xFF203A43),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}