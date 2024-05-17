import 'package:flutter/material.dart';

class ScrollWithdot extends StatefulWidget {
  final List<String> itemsList;

  const ScrollWithdot({Key? key, required this.itemsList}) : super(key: key);

  @override
  State<ScrollWithdot> createState() => _ScrollWithdotState();
}

class _ScrollWithdotState extends State<ScrollWithdot> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: PageView.builder(
              itemCount: widget.itemsList.length,
              onPageChanged: (value) {
                setState(() => currentIndex = value);
              },
              itemBuilder: (context, index) {
                final item = widget.itemsList[index];
                if (item.startsWith("http")) {
                  return Image.network(item);
                } else {
                  return Image.asset(item);
                }
              },
            ),
          ),
          Positioned(
            top: 280,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.itemsList.length,
                (index) => Container(
                  width: 15.0,
                  height: 15.0,
                  margin: EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index ? Colors.cyan : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ScrollImage extends StatefulWidget {
//   final List<String> itemsList;
//   final int itemLength;
//   final int initialIndex;

//   const ScrollImage({
//     Key? key,
//     required this.itemsList,
//     required this.itemLength,
//     required this.initialIndex,
//   }) : super(key: key);

//   @override
//   State<ScrollImage> createState() => _ScrollImageState();
// }

// class _ScrollImageState extends State<ScrollImage> {
//   late int currentIndex;

//   @override
//   void initState() {
//     super.initState();
//     currentIndex = widget.initialIndex;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//           ),
//           SizedBox(
//             width: double.infinity,
//             height: 300,
//             child: PageView.builder(
//               itemCount: widget.itemLength,
//               onPageChanged: (value) {
//                 setState(() => currentIndex = value);
//               },
//               itemBuilder: (context, index) {
//                 final item = widget.itemsList[index];
//                 if (item.startsWith("http")) {
//                   return Image.network(item);
//                 } else {
//                   return Image.asset(item);
//                 }
//               },
//               controller: PageController(initialPage: widget.initialIndex),
//             ),
//           ),
//           Positioned(
//             top: 280,
//             right: 0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 widget.itemLength,
//                 (index) => Container(
//                   width: 15.0,
//                   height: 15.0,
//                   margin: EdgeInsets.symmetric(horizontal: 2.0),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: currentIndex == index ? Colors.cyan : Colors.grey,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
