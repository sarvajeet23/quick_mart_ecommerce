import 'package:flutter/material.dart';

class ProductsImages extends StatelessWidget {
  final VoidCallback onTap;
  final Widget picture;
  final Widget label;
  const ProductsImages({
    super.key,
    required this.onTap,
    required this.picture,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 241, 246, 247),
        //border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Ink(
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  child: picture,
                  height: 50,
                ),
              ),
              label
            ],
          ),
        ),
      ),
    );
  }
}
