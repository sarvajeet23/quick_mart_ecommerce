import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';

class DropdownB extends StatefulWidget {
  final List<String> list;
  const DropdownB({
    super.key,
    required this.list,
  });

  @override
  State<DropdownB> createState() => _DropdownBState();
}

class _DropdownBState extends State<DropdownB> {
  late String dropdownValue;
  late String defaultValue;

  @override
  void initState() {
    super.initState();
    defaultValue = widget.list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AapColors.black12),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            alignment: Alignment.center,
            value: defaultValue,
            borderRadius: BorderRadius.circular(15),
            padding: EdgeInsets.all(8),
            autofocus: true,
            isExpanded: true,
            onChanged: (String? value) {
              setState(() {
                defaultValue = value!;
              });
            },
            items: widget.list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
