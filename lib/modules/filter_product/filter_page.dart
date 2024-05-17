import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class BottomSheetFilter extends StatelessWidget {
  const BottomSheetFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 40, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Filter",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                Text("Price (Low to High)")
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                Text("Price (High to Low)")
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                Text("A-Z")
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                Text("Z-A")
              ],
            ),
            hsize50,
            KButton1(
              onTap: () {},
              label: "Apply",
              backgraoundCoulor: Colors.black,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
