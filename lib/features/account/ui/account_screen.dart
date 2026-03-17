import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/features/account/ui/widgets/account_action_buttons.dart';
import 'package:yalla_kora/features/account/ui/widgets/account_header.dart';
import 'package:yalla_kora/features/account/ui/widgets/delete_account_bt.dart';
import 'package:yalla_kora/features/account/ui/widgets/logout_bt.dart';
import 'package:yalla_kora/features/account/ui/widgets/wallet_balance_section.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              AccountHeader(),
              verticalSpace(context, height: 37),
              WalletBalanceSection(),
              verticalSpace(context, height: 20),
              AccountActionButtons(),
              DeleteAccountButton(),
              LogOutButton(),
              verticalSpace(context, height: kBottomNavigationBarHeight *2),
            ],
          ),
        ),
      ),
    );
  }
}






