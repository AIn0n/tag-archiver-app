import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_vm.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  Future<bool> build() async {
    return Future.value(false);
  }

  Future<void> login(String username, String pw) async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 2));
    if (username == "dupa" && pw == "chuj") {
      state = const AsyncData(true);
    } else {
      state = AsyncError("undefined user", StackTrace.current);
    }
  }
}
