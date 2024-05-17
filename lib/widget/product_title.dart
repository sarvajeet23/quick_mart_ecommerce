import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  final Widget? leading;
  final Widget? trilling;
  const ProductTitle({
    super.key,
    this.leading,
    this.trilling,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [leading ?? SizedBox(), Spacer(), trilling ?? SizedBox()],
    );
  }
}
