import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  final List<Widget> items;

  const MyDropdown({Key? key, required this.items}) : super(key: key);

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  late Widget dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<Widget>(
        value: dropdownValue,
        onChanged: (Widget? value) {
          if (value == null) {
            setState(() {
              dropdownValue = value!;
            });
          }
        },
        items: widget.items.map<DropdownMenuItem<Widget>>((Widget item) {
          return DropdownMenuItem<Widget>(
            value: item,
            child: item,
          );
        }).toList(),
      ),
    );
  }
}
