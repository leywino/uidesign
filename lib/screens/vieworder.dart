import 'package:flutter/material.dart';
import 'package:uidesign/widgets/customappbar.dart';
import 'package:uidesign/widgets/orders/first_section.dart';

class ViewOrder extends StatelessWidget {
  const ViewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbarheight: 60,
        appbartext: 'Order #1688068',
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ViewOrdFirst(),
          ],
        ),
      ),
    );
  }
}
