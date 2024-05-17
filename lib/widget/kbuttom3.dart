import 'package:flutter/material.dart';

class KButton3 extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? icon;
  final Widget? label;
  const KButton3({
    super.key,
    this.onTap,
    this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [icon ?? SizedBox(), label ?? SizedBox()],
      ),
    );
  }
}
