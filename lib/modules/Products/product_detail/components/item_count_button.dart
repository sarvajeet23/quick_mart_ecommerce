import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class ItemQuantity extends StatelessWidget {
  const ItemQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(border: Border.all()),
              child: Icon(Icons.add),
            ),
            wsize10,
            // TextField(
            //   decoration: InputDecoration(border: OutlineInputBorder()),
            // ),
            wsize10,
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(border: Border.all()),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
