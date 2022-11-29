import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AccountFeatures extends StatelessWidget {
  AccountFeatures({super.key});

  List featureicons = [
    'assets/images/f1.jpeg',
    'assets/images/f2.jpeg',
    'assets/images/f3.jpeg',
    'assets/images/f4.jpeg'
  ];
  List featuretitles = [
    'Custom domain name',
    'Verfied seller badge',
    'Dukaan for PC',
    'Priority support'
  ];
  List featuresubs = [
    'Get your own custom domain and build your brand on the internet.',
    'Get green verified badge under your store name and build trust.',
    'Acess all the exclusive premium features on Dukaan for PC.',
    'Get your questions resolved with our priority customer support'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              featuretitles[index],
            ),
            subtitle: Text(
              featuresubs[index],
            ),
            leading: CircleAvatar(
              child: Image.asset(
                featureicons[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
