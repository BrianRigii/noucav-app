import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noucav/config.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void onLoginFn(BuildContext context) {
    context.go('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 16.0),
            Form(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                    ElevatedButton(
                        onPressed: () => onLoginFn(context),
                        child: const Text('LOGIN')),
                  ]),
            ),
          ],
        ),
      ),
    ));
  }
}
