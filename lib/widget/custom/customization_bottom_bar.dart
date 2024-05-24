import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtombar extends StatefulWidget {
  final List<BottomNavigationBarItem> bottomNavigationBarItems;
  final List<Widget> pages;
  final double? height;
  final double? iconSize;
  final double? labelSize;

  final Color? backgroundColor;
  final Color? inactiveColor;
  final Color? activeColor;

  MyButtombar({
    required this.bottomNavigationBarItems,
    required this.pages,
    this.height,
    this.iconSize,
    this.backgroundColor,
    this.inactiveColor,
    this.activeColor,
    this.labelSize,
  });

  @override
  _MynavigationbarState createState() => _MynavigationbarState();
}

class _MynavigationbarState extends State<MyButtombar> {
  late final List<GlobalKey<NavigatorState>> _navigatorKeys;

  @override
  void initState() {
    super.initState();
    _navigatorKeys = List.generate(
      widget.pages.length,
      (index) => GlobalKey<NavigatorState>(),
    );
  }

  void _onTap(int index) {
    // Pop to first route when a tab is reselected
    if (index == _currentIndex && _navigatorKeys[index].currentState != null) {
      _navigatorKeys[index].currentState!.popUntil((route) => route.isFirst);
    }
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: widget.activeColor,
        inactiveColor: widget.inactiveColor ?? Colors.black,
        backgroundColor: widget.backgroundColor,
        height: widget.height ?? 70,
        iconSize: widget.iconSize ?? 30,
        items: _buildBottomNavigationBarItems(),
        onTap: _onTap,
        currentIndex: _currentIndex,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          navigatorKey: _navigatorKeys[index],
          builder: (context) => CupertinoPageScaffold(
            child: widget.pages[index],
          ),
        );
      },
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItems() {
    return widget.bottomNavigationBarItems.map((item) {
      final isSelected = widget.bottomNavigationBarItems.indexOf(item) == _currentIndex;
      return BottomNavigationBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconTheme(
              data: IconThemeData(
                color: isSelected ? widget.activeColor : widget.inactiveColor,
                size: widget.iconSize ?? 40,
              ),
              child: item.icon,
            ),
            Text(
              item.label ?? '',
              style: TextStyle(
                fontSize: widget.labelSize,
                color: isSelected ? widget.activeColor : widget.inactiveColor,
              ),
            ),
          ],
        ),
      );
    }).toList();
  }
}
