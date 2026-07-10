import 'package:flutter/material.dart';
import 'package:guffgarum/screens/Home/homescreen.dart';
import 'package:guffgarum/screens/splash/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;

  runApp(MyApp(hasSeenOnboarding: hasSeenOnboarding));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.hasSeenOnboarding});

  final bool hasSeenOnboarding;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guff Garum',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 90, 49, 236)),
        useMaterial3: false,
        fontFamily: 'Regular',
      ),
      home: hasSeenOnboarding ? const Homescreen() : const SplashScreen(),
    );
  }
}