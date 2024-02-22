import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medplusapp/core/app_export.dart';
import 'package:medplusapp/core/utils/navigator_service.dart';
import 'package:medplusapp/widgets/custom_elevated_button.dart';

class EmptyWalletWidget extends StatelessWidget {
  const EmptyWalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/wallet-pana.svg'),
            Text(
              'No Wallet Account',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Text('You do not have a wallet yet.'),
            SizedBox(height: 30),
            CustomElevatedButton(
              text: 'Create Wallet',
              onPressed: () {
                NavigatorService.pushNamed(AppRoutes.createWalletScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
