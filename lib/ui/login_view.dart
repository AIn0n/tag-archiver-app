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
        HomeRoute().go(context);
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text("login")),
      body: Center(
        child: Column(
          children: [
            Text("Hello world from login screen"),

            TextFormField(
              controller: loginController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Login",
              ),
            ),
            TextFormField(
              controller: pwController,
              decoration: InputDecoration(
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
              child: Text("Login"),
            ),
            switch (isLoginSuccess) {
              AsyncLoading() => CircularProgressIndicator(),
              AsyncData() => SizedBox.shrink(),
              AsyncError() => Text("Error!"),
            },
          ],
        ),
      ),
    );
  }
}
