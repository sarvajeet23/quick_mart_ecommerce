import 'package:flutter/material.dart';

class KSliderButton extends StatefulWidget {
  const KSliderButton({
    super.key,
  });

  @override
  State<KSliderButton> createState() => _KSliderButtonState();
}

class _KSliderButtonState extends State<KSliderButton> {
  bool isSellect = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isSellect = true;
                  });
                },
                child: Container(
                  width: 180,
                  margin: EdgeInsets.all(9),
                  child: Center(
                    child: Text(
                      "Ongoing",
                      style: TextStyle(
                        color: isSellect ? Colors.white : Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: isSellect ? Colors.black : Colors.grey[100],
                      borderRadius: BorderRadius.circular(18)),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isSellect = false;
                  });
                },
                child: Container(
                  width: 150,
                  margin: EdgeInsets.all(9),
                  child: Center(
                    // widthFactor: 2.6,
                    child: Text(
                      "Completed",
                      style: TextStyle(
                        color: isSellect ? Colors.black : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: isSellect ? Colors.grey[100] : Colors.black,
                      borderRadius: BorderRadius.circular(18)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
