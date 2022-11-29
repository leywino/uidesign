import 'package:flutter/material.dart';
import 'package:uidesign/utilities/colors.dart';
import 'package:uidesign/widgets/account/accountcard.dart';
import 'package:uidesign/widgets/account/accountdukaan.dart';
import 'package:uidesign/widgets/account/accountfaq.dart';
import 'package:uidesign/widgets/account/accountfaqtitle.dart';
import 'package:uidesign/widgets/account/accountfeatures.dart';
import 'package:uidesign/widgets/account/accounthelp.dart';
import 'package:uidesign/widgets/customappbar.dart';
import 'package:uidesign/widgets/account/featuretitle.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: CustomAppBar(
        appbartext: 'Dukaan Premium',
        appbarheight: 60,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const AccountCard(),
          const FeatureTitle(),
          AccountFeatures(),
          const AccountDukaan(),
          const FaqTitle(),
          const AccountFAQ(),
          const AccountHelp(),
        ]),
      ),
    );
  }
}
