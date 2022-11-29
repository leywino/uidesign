import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/screens/vieworder.dart';
import 'package:uidesign/utilities/colors.dart';


// ignore: must_be_immutable
class OrderList extends StatelessWidget implements PreferredSizeWidget {
  OrderList({super.key});

  List orderid = [
    "Order #1134742",
    "Order #1372323",
    "Order #1452653",
    "Order #1860920",
    "Order #1064708",
    "Order #1851239",
    "Order #1161639",
    "Order #1243514",
    "Order #1976253",
    "Order #1474708",
    "Order #1388555",
    "Order #1388555",
  ];

  List orderdate = [
    'Apr 1, 10:37 AM',
    'Mar 6, 01:26 PM',
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 1, 11:19 AM',
    'Apr 1, 10:37 AM',
    'Mar 6, 01:26 PM',
    'Feb 13, 07:57 AM',
    'Feb 18, 12:08 PM',
    'Feb 22, 10.04 PM',
    'Feb 21, 01:25 PM',
    'Feb 21, 10:20 AM',
    'Feb 20, 09:54 AM',
  ];

  List orderprice = [
    '₹799',
    '₹2397.4',
    '₹2686.42',
    '₹1722.75',
    '₹2599.25',
    '₹599.25',
    '₹524.25',
    '₹1699',
    '₹1123.5',
    '₹1524.25',
    '₹2524.25',
    '₹1493',
  ];

  List ordericon = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
  ];

  List ordersub = [
    '₹799 deposited to: 58860200000135',
    '₹2397.4 deposited to: 58860200000138',
    '₹2686.42 deposited to: 58860200000138',
    '₹1722.75 deposited to: 58860200000136',
    '₹2599.25 deposited to: 58860200000138',
    '₹599.25 deposited to: 58860200000138',
    '₹524.25 deposited to: 58860200000134',
    '₹1699 deposited to: 58860200000138',
    '₹1123.5 deposited to: 58860200000138',
    '₹1524.25 deposited to: 58860200000133',
    '₹2524.25 deposited to: 58860200000138',
    '₹1493 deposited to: 58860200000138',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 12,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx1) => const ViewOrder(),
              ),
            );
          },
          title: RichText(
            text: TextSpan(
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: '${orderid[index]}\n'),
                TextSpan(
                  text: orderdate[index],
                  style: const TextStyle(color: faqgrey1),
                ),
              ],
            ),
          ),
          leading: Image.asset(ordericon[index]),
          subtitle: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              ordersub[index],
              style: GoogleFonts.poppins(color: faqgrey2),
            ),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                orderprice[index],
                style: GoogleFonts.poppins(fontSize: 15, color: Colors.cyan),
              ),
              Wrap(
                spacing: 3,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Icon(
                    Icons.circle,
                    size: 12,
                    color: greeneorder,
                  ),
                  Text(
                    'Successful',
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
            ],
          ),
          dense: false,
        );
      },
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
