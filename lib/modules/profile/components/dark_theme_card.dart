import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({
    super.key,
  });

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  bool isSwithch = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: SvgPicture.asset('images/profile_icons/dark_theme.svg'),
      title: Text("DarkTheme"),
      trailing: Switch(
        value: isSwithch,
        onChanged: (value) {
          setState(() {
            isSwithch = value;
          });
        },
        focusColor: Colors.amber,
      ),
    );
  }
}
