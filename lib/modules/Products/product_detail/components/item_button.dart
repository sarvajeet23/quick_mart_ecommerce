import 'package:flutter/material.dart';

class ItemColour extends StatelessWidget {
  const ItemColour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 85 * 5,
        child: Row(
          children: [
            for (int i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.black,
                    )),
              ),
          ],
        ));
  }
}
