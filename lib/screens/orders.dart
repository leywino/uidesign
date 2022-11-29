import 'package:flutter/material.dart';
import 'package:uidesign/widgets/customappbar.dart';
import 'package:uidesign/widgets/orders/orderexpanded.dart';
import 'package:uidesign/widgets/orders/orderlist.dart';
import 'package:uidesign/widgets/orders/ordertransactions.dart';
import 'package:uidesign/widgets/orders/transactioncard.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbarheight: 60,
        appbartext: 'Payments',
        appbaricon: Icons.info_outline,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TransactionCard(),
            const OrderExpanded(),
            const OrderTransactions(),
            OrderList(),
          ],
        ),
      ),
    );
  }
}
