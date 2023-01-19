import 'package:flutter/material.dart';
import 'package:noucav/config.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void onLoginFn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextFormField(
            decoration: Config.input(label: 'Email'),
            controller: _emailController,
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: Config.input(label: 'Password'),
            controller: _passwordController,
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(onPressed: onLoginFn, child: const Text('LOGIN')),
        ]),
      )),
    ));
  }
}
