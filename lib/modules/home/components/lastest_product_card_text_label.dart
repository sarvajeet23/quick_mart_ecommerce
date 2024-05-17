import 'package:flutter/material.dart';

class LastestProductsCardTextLabel extends StatelessWidget {
  final VoidCallback? onTap;
  const LastestProductsCardTextLabel({
    super.key,
    this.onTap,
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
                        backgroundColor: Colors.pink,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: colors[i],
                          ),
                        ),
                      ),
                    )
                ],
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: onTap,
                child: Text("All Colors"),
              ),
            ],
          ),
          Text(
            "Nike air jordan retro fashion",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "\$126.00",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("\$126.00"),
        ],
      ),
    );
  }
}
