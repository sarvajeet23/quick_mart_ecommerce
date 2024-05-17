import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  @override
  State<SliderCard> createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 170,
          width: double.infinity,
          child: PageView.builder(
            controller: _controller,
            itemCount: 6,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 300,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "images/Rectangle 6.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 70 * 2,
          right: 40,
          child: _buildDotsIndicator(),
        ),
        Positioned(
          top: 50 * 2,
          left: 40,
          child: Text(
            "On Headphones",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Positioned(
          top: 70 * 2,
          left: 40,
          child: Text(
            "Exclusive Sales",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        )
      ],
    );
  }

  Widget _buildDotsIndicator() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 18,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 6; i++)
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
        ),
      ),
    );
  }
}
