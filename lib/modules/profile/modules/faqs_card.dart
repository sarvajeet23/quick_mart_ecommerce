import 'package:flutter/material.dart';

class FAQsCard extends StatelessWidget {
  const FAQsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQs"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
              '''An FAQ page for an e-commerce store is a page that answers customers and potential customers frequently asked questions. It should serve customers at all phases of their buying journey. The page keeps all the information organized and in one place, so it's easy for customers to find and navigate.'''),
        ),
      )),
    );
  }
}
