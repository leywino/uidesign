import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';
import 'package:uidesign/widgets/additional/additionalswitch.dart';

List producttitle = [
  'Men | Blue T Shirt',
  'Men | Red T Shirt',
  'Men | Pink T Shirt',
  'Men | Cyan T Shirt',
  'Men | Blue T Shirt',
  'Men | Red T Shirt',
  'Men | Pink T Shirt',
  'Men | Cyan T Shirt',
  'Men | Blue T Shirt',
  'Men | Red T Shirt',
];
List productprice = [
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
];
List producticon = [
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
];

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15, top: 18),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          producttitle[index],
                          style: GoogleFonts.poppins(fontSize: 20),
                        ),
                        const Icon(Icons.more_vert),
                      ],
                    ),
                    Text(
                      '1 piece',
                      style: GoogleFonts.poppins(),
                    ),
                    Text(
                      productprice[index],
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'In stock',
                          style: GoogleFonts.poppins(color: Colors.green),
                        ),
                        const SwitchAdditional(),
                      ],
                    ),
                  ],
                ),
                leading: Image.asset(
                  producticon[index],
                ),
                subtitle: Column(
                  children: [
                    const Divider(
                      thickness: 2,
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        const Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                        Text(
                          'Share Product',
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 18),
                        )
                      ],
                    )
                  ],
                ),
                dense: null,
              ),
            ),
          );
        }),
      ),
    );
  }
}
