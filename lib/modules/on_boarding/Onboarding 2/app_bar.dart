import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';
import 'package:quick_mart_ecommerce/widget/button.dart';

class kAppBar extends StatelessWidget {
  const kAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      height: 500,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 254, 255),
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: kButton(
                    title: 'Skip for now',
                    textStyle: TextStyle(color: Colors.green),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            hsize60,
            hsize60,
            Container(
              child: Image.asset("images/01 Online Shopping 5.png"),
            ),
          ],
        ),
      ),
    );
  }
}
