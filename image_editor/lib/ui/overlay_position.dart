import 'package:flutter/material.dart';

class RectPositioned extends StatelessWidget {
  final Widget child;
  final Rect rect;

  const RectPositioned({super.key, required this.child, required this.rect});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Transform.translate(
        offset: Offset(rect.left, rect.top),
        child: SizedBox(
          width: rect.width,
          height: rect.height,
          child: child,
        ),
      ),
    );
  }
}
