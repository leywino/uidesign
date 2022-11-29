import 'package:flutter/material.dart';
import 'package:uidesign/utilities/colors.dart';
import 'package:uidesign/widgets/customappbar.dart';
import 'package:uidesign/widgets/managecard.dart';

class ScreenManage extends StatelessWidget {
  const ScreenManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: CustomAppBar(
        appbartext: 'Manage Store',
        appbarheight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ManageCard(
                    cardtext: 'Marketing Designs',
                    cardicon: Icons.volume_up_outlined,
                    cardbg: cardbg1,
                  ),
                  ManageCard(
                    cardtext: 'Online Payments',
                    cardicon: Icons.currency_rupee,
                    cardbg: cardbg2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ManageCard(
                    cardtext: 'Discount Coupons',
                    cardicon: Icons.percent_outlined,
                    cardbg: cardbg3,
                  ),
                  ManageCard(
                    cardtext: 'My Customers',
                    cardicon: Icons.people_alt_outlined,
                    cardbg: cardbg4,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ManageCard(
                    cardtext: 'Store QR Code',
                    cardicon: Icons.qr_code_scanner_outlined,
                    cardbg: cardbg5,
                  ),
                  ManageCard(
                    cardtext: 'Extra Charges',
                    cardicon: Icons.money,
                    cardbg: cardbg6,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ManageCard(
                    cardtext: 'Order Form',
                    cardicon: Icons.list,
                    cardbg: cardbg7,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
