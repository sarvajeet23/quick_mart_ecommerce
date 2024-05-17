import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/profile/components/porfile_card.dart';
import 'package:quick_mart_ecommerce/modules/profile/components/profile_infomation.dart';
import 'package:quick_mart_ecommerce/utility/app_colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(15))),
          ),
          Positioned(
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: PragyaColors.telyecen,
            child: ProfileCard(),
          )),
          Positioned(
              top: 170,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: ProfileInformantionCard(),
              ))
        ],
      ),
    );
  }
}
