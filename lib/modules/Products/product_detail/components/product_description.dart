import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';

class ProductionDescription extends StatefulWidget {
  const ProductionDescription({
    super.key,
  });

  @override
  _ProductionDescriptionState createState() => _ProductionDescriptionState();
}

class _ProductionDescriptionState extends State<ProductionDescription> {
  bool isExpanded = false;

  final String shortDescription =
      "Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for";
  final String fullDescription =
      "Constructed with high-quality silicone material, the Loop Silicone Strong Magnetic Watch ensures a comfortable and secure fit on your wrist. The soft and flexible silicone is gentle on the skin, making it ideal for extended wear. Its lightweight design allows for a seamless blend of comfort and durability.\n\n"
      "One of the standout features of this watch band is its strong magnetic closure. The powerful magnets embedded within the band provide a secure and reliable connection, ensuring that your smartwatch stays firmly in place throughout the day. Say goodbye to worries about accidental detachment or slippage - the magnetic closure offers a peace of mind for active individuals on the go.\n\n"
      "The Loop Silicone Strong Magnetic Watch Band is highly versatile, compatible with a wide range of smartwatch models. Its adjustable strap length allows for a customizable fit, catering to various wrist sizes. Whether you're engaging in intense workouts or attending formal occasions, this watch band effortlessly adapts to your style and activity level.";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85 * 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: isExpanded ? fullDescription : shortDescription,
              style: AapColors.black38.copyWith(fontSize: 17),
              children: [
                if (!isExpanded)
                  TextSpan(
                    text: "..Read more",
                    style: TextStyle(color: Colors.cyan),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          isExpanded = true;
                        });
                      },
                  ),
              ],
            ),
          ),
          if (isExpanded)
            TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = false;
                });
              },
              child: Text(
                "Read less",
                style: TextStyle(color: Colors.blue),
              ),
            ),
        ],
      ),
    );
  }
}
