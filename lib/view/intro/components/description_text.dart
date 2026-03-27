import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          "An innovative Flutter Developer with over 3+ years of hands-on experience in "
              "building and maintaining mobile applications tailored specifically for the recruiting industry.",

          maxLines: Responsive.isMobile(context) ? 3 : 2, // ✅ FIX
          overflow: TextOverflow.ellipsis,

          textAlign: TextAlign.start,

          style: TextStyle(
            color: Colors.grey,
            wordSpacing: 2,
            fontSize: value,
          ),
        );
      },
    );
  }
}