import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            child: Column(children: [
      TextFormField(
        controller: _emailController,
      ),
      TextFormField(
        controller: _passwordController,
      ),
      const ElevatedButton(onPressed: null, child: Text('LOGIN')),
    ])));
  }
}
