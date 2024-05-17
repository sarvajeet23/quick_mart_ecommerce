import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/on_boarding/auth/loign/loign.dart';
import 'package:quick_mart_ecommerce/modules/bottom_bar/dashboard.dart';
import 'package:quick_mart_ecommerce/modules/profile/components/profile_infomation.dart';
import 'package:quick_mart_ecommerce/modules/profile/modules/shipping_card/shipping_card.dart';
import 'package:quick_mart_ecommerce/modules/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SplashScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => ProfileInformantionCard(),
        "/SplashScreen": (context) => SplashScreen(),
        "/HomeScreen": (context) => const HomeScreen(),
        "/Login": (context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
