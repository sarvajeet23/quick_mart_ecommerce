import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFieldIcons extends StatefulWidget {
  const TextFieldIcons({Key? key}) : super(key: key);

  @override
  State<TextFieldIcons> createState() => _TextFieldIconsState();
}

class _TextFieldIconsState extends State<TextFieldIcons> {
  late String defaultvalue;

  @override
  void initState() {
    super.initState();
    defaultvalue = "india";
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(15),
        value: defaultvalue,
        items: [
          DropdownMenuItem<String>(
            value: "india",
            child: SvgPicture.asset("images/country_flag/indida.svg"),
          ),
          DropdownMenuItem<String>(
            value: "russia",
            child: SvgPicture.asset("images/country_flag/russia.svg"),
          ),
          DropdownMenuItem<String>(
            value: "france",
            child: SvgPicture.asset("images/country_flag/france.svg"),
          ),
        ],
        onChanged: (String? newValue) {
          setState(() {
            if (newValue != null) {
              defaultvalue = newValue;
            }
          });
        },
      ),
    );
  }
}
