import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/widget/kbuttom3.dart';

class CheckoutCard extends StatelessWidget {
  final Widget? Icon;
  final Widget? label;
  final VoidCallback? onTap;

  const CheckoutCard({
    super.key,
    this.Icon,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: KButton3(
            onTap: onTap,
            icon: Icon,
            label: label,
          ),
        )
      ],
    );
  }
}
