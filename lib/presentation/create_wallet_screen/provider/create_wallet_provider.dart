import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/repository/create_wallet_repository.dart';

createWalletProvider() => FutureProvider(
      (ref) => ref.read(createWalletRepositoryProvider).createWallet(),
    );

final createWalletRepositoryProvider =
    Provider<CreateWalletRepository>((ref) => CreateWalletRepository());
