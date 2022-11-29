import 'package:flutter/material.dart';
import 'package:uidesign/utilities/colors.dart';

class SwitchAdditional extends StatefulWidget {
  const SwitchAdditional({super.key});

  @override
  State<SwitchAdditional> createState() => _SwitchAdditionalState();
}

class _SwitchAdditionalState extends State<SwitchAdditional> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: appBarColor,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
