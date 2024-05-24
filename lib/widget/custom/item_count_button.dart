import 'package:flutter/material.dart';

class ItemCountButton extends StatefulWidget {
  const ItemCountButton({super.key});

  @override
  State<ItemCountButton> createState() => _ItemCountButtonState();
}

class _ItemCountButtonState extends State<ItemCountButton> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (itemCount > 1) {
                  itemCount--;
                }
              });
            },
            icon: Icon(Icons.remove),
          ),
          Text(
            "$itemCount",
            style: TextStyle(fontSize: 20),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                itemCount++;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
