import 'package:flutter/material.dart';

class SizeSelecterButton extends StatefulWidget {
  const SizeSelecterButton({
    super.key,
    required Null Function(dynamic size) onSizeSelected,
  });

  @override
  State<SizeSelecterButton> createState() => _SizeSelecterButtonState();
}

class _SizeSelecterButtonState extends State<SizeSelecterButton> {
  final List<String> sizes = ["XS", "S", "M", "L", "XL"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          sizes.length,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black12,
                child: CircleAvatar(
                  radius: 18,
                  child: Text(
                    sizes[index],
                    style: TextStyle(
                        color: selectedIndex == index ? Colors.white : Colors.black),
                  ),
                  backgroundColor: selectedIndex == index ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
