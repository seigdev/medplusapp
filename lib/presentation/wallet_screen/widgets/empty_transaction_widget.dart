import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EmptyTransactionWidget extends ConsumerWidget {
  const EmptyTransactionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/wallet-pana.svg'),
            Text(
              'No Transactions',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Text('You do not have any transaction yet.'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
