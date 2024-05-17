// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%201/Onboarding%201.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%202/on_boarding_2.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/Onboarding%203/on_boarding_3.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/loign.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/signup/signup.dart';
import 'package:quick_mart_ecommerce/utility/size_box.dart';

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _controller = PageController();
  late bool isLoginSelected;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    isLoginSelected = true;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              SizedBox(
                height: 840,
                child: PageView(
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [HomePage(), Onboarding2(), Onboarding3()],
                ),
              ),
              _currentPage < 2
                  ? KButton1(
                      onTap: () {
                        if (_currentPage < 3) {
                          _controller.animateToPage(
                            _currentPage + 1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }
                      },
                      height: 60,
                      label: 'Next',
                      backgraoundCoulor: Colors.black,
                    )
                  : Row(
                      children: [
                        KButton1(
                          onTap: () {
                            setState(() {
                              isLoginSelected = true;

                              if (_currentPage < 3) {
                                _controller.animateToPage(
                                  _currentPage + 1,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => LoginPage()));
                              }
                            });
                          },
                          height: 60,
                          width: 200,
                          label: 'Login',
                          backgraoundCoulor: isLoginSelected ? Colors.blue : Colors.black,
                        ),
                        Spacer(),
                        KButton1(
                          onTap: () {
                            setState(() {
                              isLoginSelected = false;
                              if (_currentPage < 2) {
                                _controller.animateToPage(
                                  _currentPage + 1,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                );
                              }
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => SignupPage()));
                            });
                          },
                          height: 60,
                          width: 200,
                          label: 'Get Started',
                          backgraoundCoulor: isLoginSelected ? Colors.black : Colors.blue,
                        ),
                      ],
                    ),
              hsize10,
              _buildDotsIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == i ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
