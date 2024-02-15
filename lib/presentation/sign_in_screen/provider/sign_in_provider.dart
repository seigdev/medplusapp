import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medplusapp/presentation/sign_in_screen/data/repositories/sign_in_repository.dart';

userLoginProvider(String email, String password) => FutureProvider(
      (ref) => ref.read(signInRepositoryProvider).userLogin(email, password),
    );

final signInRepositoryProvider =
    Provider<SignInRepository>((ref) => SignInRepository());
