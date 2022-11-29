import 'package:flutter/material.dart';
import 'package:uidesign/widgets/additional/additionallistview.dart';
import 'package:uidesign/widgets/customappbar.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbartext: 'Additional Information',
        appbarheight: 60,
      ),
      body: const AdditionalListView(),
    );
  }
}
