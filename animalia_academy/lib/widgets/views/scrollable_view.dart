import "package:flutter/material.dart";

class ScrollableView extends StatelessWidget {
  final Widget child;

  const ScrollableView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
