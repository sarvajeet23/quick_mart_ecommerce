import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';

class TextFieldNamePlate extends StatelessWidget {
  final String name;
  final String? requiredIcon;
  const TextFieldNamePlate({
    super.key,
    required this.name,
    this.requiredIcon,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: name,
            style: PragyaStyle.black20,
            children: [TextSpan(text: requiredIcon, style: PragyaColors.red)]));
  }
}
