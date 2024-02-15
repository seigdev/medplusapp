import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/repositories/wallet_repository.dart';

final getwalletProvider =
    FutureProvider((ref) => ref.watch(walletRepositoryProvider).getWallet());

final getTransactionProvider = FutureProvider(
    (ref) => ref.watch(walletRepositoryProvider).getTransactions());

final walletProvider =
    FutureProvider((ref) => ref.watch(walletRepositoryProvider).wallet);

final walletRepositoryProvider =
    Provider<WalletRepository>((ref) => WalletRepository());
