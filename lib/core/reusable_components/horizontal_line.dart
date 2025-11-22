import 'package:flutter/material.dart';

import '../resources/colorManager.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: ColorManager.primaryDarkColor,
    );
  }
}
