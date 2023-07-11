import 'package:flutter/material.dart';
import '../../../../core/widgets/app_bar.dart';

import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  static const String route = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final authBloc = AuthBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title: 'Login',
        canPop: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login'),

            //* Vertical Spacer
            const SizedBox(height: 50.0),

            FilledButton(
              onPressed: () {
                // authBloc.add(LoginEvent());
              },
              style: FilledButton.styleFrom(),
              child: const SizedBox(
                width: 120.0,
                child: Center(
                  child: Text('Done'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
