import 'package:flutter/material.dart';

class kButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? borderColour;
  final Color? titleColour;
  final Color? backgroundColour;
  final Color? effectColor;
  final Color? hoverColor;
  final Duration? hoverDuration;

  final TextStyle? textStyle;

  const kButton({
    super.key,
    required this.title,
    required this.onTap,
    this.borderColour,
    this.titleColour,
    this.backgroundColour,
    this.effectColor,
    this.textStyle,
    this.hoverColor,
    this.hoverDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: backgroundColour,
      child: InkWell(
        splashColor: effectColor,
        hoverColor: hoverColor,
        hoverDuration: hoverDuration,
        onTap: onTap,
        child: Container(
            decoration: borderColour != null
                ? BoxDecoration(
                    border: Border.all(color: borderColour ?? Colors.blue),
                    borderRadius: BorderRadius.circular(5))
                : BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 4,
                right: 4,
              ),
              child: Text(
                title,
                style: textStyle,
              ),
            )),
      ),
    );
  }
}
