import 'package:flutter/material.dart';

class LastestProductsCardTextLabel extends StatelessWidget {
  final String name;
  final String dicountprice;
  final String actualPrice;
  final Color? selectedColor;
  final Color? overLap;

  final VoidCallback? onTap;
  const LastestProductsCardTextLabel({
    super.key,
    this.onTap,
    required this.name,
    required this.dicountprice,
    required this.actualPrice,
    this.selectedColor,
    this.overLap,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.yellow,
      Colors.purple,
      Colors.brown,
      Colors.teal,
      Colors.indigo,
      Colors.pink,
    ];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Align(
                      widthFactor: 0.75,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: overLap,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: selectedColor,
                          ),
                        ),
                      ),
                    )
                ],
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: onTap,
                child: Text(
                  "All Colors",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            dicountprice,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            actualPrice,
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
        ],
      ),
    );
  }
}
