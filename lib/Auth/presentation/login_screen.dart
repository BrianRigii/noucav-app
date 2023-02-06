import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noucav/view.dart';
import 'package:noucav/Auth/presentation/view_models/login_screen_vm.dart';
import 'package:noucav/config.dart';
import 'package:noucav/viewmodel.dart';

class LoginScreen extends View<LoginScreenVM> {
  const LoginScreen({Key? key}) : super(key: key);

  void onLoginFn(BuildContext context) {
    context.go('/home');
  }

  @override
  Widget build(BuildContext context, LoginScreenVM viewModel) {
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
                      controller: viewModel.emailController,
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      decoration: Config.input(label: 'Password'),
                      controller: viewModel.passwordController,
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
