import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_ecommerce/modules/filter_product/custom_search_delegate.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/loign.dart';
import 'package:quick_mart_ecommerce/modules/profile/components/porfile_card.dart';
import 'package:quick_mart_ecommerce/widget/dilog_box.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "images/Vector.svg",
            height: 40,
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "uickMart",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Spacer(),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
              icon: Icon(Icons.search)),
          InkWell(
            onTap: () => ShibooDialog.showDialogCupertino(
                context: context,
                title: "Alert",
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text("Login Out")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                ]),
            child: PictureCard(
                Picture: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "images/profile_pic/shiboo.png",
                fit: BoxFit.fill,
              ),
            )),
          )
        ],
      ),
    );
  }
}
//LoginPage

