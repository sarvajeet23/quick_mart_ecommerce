import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/modules/bottom_bar/home_screen.dart';

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
      // home: /SplashScreen(), ProfileInformantionCard

      home: HomeScreen(),

      // initialRoute: "/HomeScreen",
      // routes: {
      //   "/": (context) => SplashScreen(),
      //   "/SplashScreen": (context) => ProfileInformantionCard(),
      //   "/HomeScreen": (context) => const HomeScreen(),
      //   "/Login": (context) => LoginPage()
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
