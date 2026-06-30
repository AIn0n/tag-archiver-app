import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tag_archiver_app/domain/login_vm.dart';

import '../routing/routes.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final loginController = TextEditingController();
  final pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isLoginSuccess = ref.watch(loginProvider);

    ref.listen(loginProvider, (_, next) {
      if (next.value == true) {
        const HomeRoute().go(context);
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text("login")),
      body: Center(
        child: Column(
          children: [
            const Text("Hello world from login screen"),

            TextFormField(
              controller: loginController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Login",
              ),
            ),
            TextFormField(
              controller: pwController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "password",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref
                    .watch(loginProvider.notifier)
                    .login(loginController.text, pwController.text);
              },
              child: const Text("Login"),
            ),
            switch (isLoginSuccess) {
              AsyncLoading() => const CircularProgressIndicator(),
              AsyncData() => const SizedBox.shrink(),
              AsyncError() => const Text("Error!"),
            },
          ],
        ),
      ),
    );
  }
}
