import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';

class ViewOrdFirst extends StatelessWidget {
  const ViewOrdFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'May 31, 05:42 PM',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Icon(
                      Icons.circle,
                      color: appBarColor,
                      size: 15,
                    ),
                    Text(
                      'Delivered',
                      style: GoogleFonts.poppins(fontSize: 18, color: faqgrey2),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 ITEM',
                  style: GoogleFonts.poppins(fontSize: 18, color: faqgrey2),
                ),
                Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Icon(
                      Icons.receipt_long,
                      color: appBarColor,
                      size: 20,
                    ),
                    Text(
                      'RECEIPT',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: appBarColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore | Men | Navy',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                Text(
                  '1 piece',
                  style: GoogleFonts.poppins(fontSize: 15, color: faqgrey1),
                ),
                Text(
                  'Size: XL',
                  style: GoogleFonts.poppins(fontSize: 15, color: faqgrey1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(color: appBarColor),
                          borderRadius: BorderRadius.all(Radius.circular(1)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1',
                              style: GoogleFonts.poppins(color: appBarColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'x  ₹799                               ₹799',
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            leading: Image.asset('assets/images/1.jpeg'),
          ),
          const Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item Total',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                Text(
                  '₹799',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
                Text(
                  'FREE',
                  style: GoogleFonts.poppins(fontSize: 18, color: Colors.green),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  '₹799',
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CUSTOMER DETAILS',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: faqgrey2),
                ),
                Wrap(
                  spacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Icon(
                      Icons.share_outlined,
                      color: appBarColor,
                      size: 20,
                    ),
                    Text(
                      'SHARE',
                      style:
                          GoogleFonts.poppins(fontSize: 18, color: appBarColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'D 1101 Chartered Beverly',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Hills, Subramanyapura P.O',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'City',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Bangalore',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Column(
                    children: [
                      Text(
                        'Pincode',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '560061',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Payment',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Online',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 35,
                      width: 60,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'PAID',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'State',
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Karnataka',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'greenniceaqua@gmail.com',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: appBarColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Share receipt',
                      style:
                          GoogleFonts.poppins(fontSize: 20, color: appBarColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
