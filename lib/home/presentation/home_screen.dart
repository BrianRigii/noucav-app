import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _navigateToPayments() {
    context.go('/payments');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Account Detail and Greetings
        // Periods should show here
        //transactions
        //services

        ElevatedButton(
            onPressed: _navigateToPayments, child: const Text('Payments')),
      ],
    )));
  }
}
