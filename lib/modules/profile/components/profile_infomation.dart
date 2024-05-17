import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart_ecommerce/modules/profile/model/profile_model.dart';
import 'package:quick_mart_ecommerce/utility/pragrya_style.dart';

class ProfileInformantionCard extends StatelessWidget {
  const ProfileInformantionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle("Personal Information"),
              ...ProfileTiles(context, personalInformation),
              SectionTitle("Support & Information"),
              ...ProfileTiles(context, supportInformation),
              SectionTitle("Account Management"),
              ...ProfileTiles(context, accountManagement),
              DarkTheme()
            ],
          ),
        ),
      ),
    );
  }

  Widget SectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        title,
        style: PragyaStyle.bold.copyWith(fontSize: 18),
      ),
    );
  }

  List<Widget> ProfileTiles(BuildContext context, List<Map<String, dynamic>> items) {
    return items.map((item) {
      return ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => item['destination']),
          );
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 0),
        leading: SvgPicture.asset(item['icon'], height: 24, width: 24),
        title: Text(
          item['title'],
          style: PragyaStyle.bold.copyWith(fontSize: 16),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      );
    }).toList();
  }
}

class DarkTheme extends StatelessWidget {
  const DarkTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: SvgPicture.asset('images/profile_icons/dark_theme.svg'),
      title: Text("DarkTheme"),
      trailing: Switch(
        value: true,
        onChanged: (_) {},
        focusColor: Colors.amber,
      ),
    );
  }
}
