import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToHideBottomNavigationBar extends StatelessWidget {
  
  ScrollController scrollController;
  Curve curves;
  List<Widget> children;
  Duration duration;
  ScrollToHideBottomNavigationBar({
    Key? key,
    required this.scrollController,
    this.curves = Curves.fastLinearToSlowEaseIn,
    required this.duration,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        return AnimatedContainer(
          curve: curves,
          duration: duration,
          height: scrollController.position.userScrollDirection ==
                  ScrollDirection.reverse
              ? 0
              : kBottomNavigationBarHeight,
          child: child,
        );
      },
      child: Wrap(
        children: children,
      ),
    );
  }
}