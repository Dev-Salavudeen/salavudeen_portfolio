import 'package:flutter/material.dart';
import '../../../view model/responsive.dart';
import '../../home/scroll_controller.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              /// ✅ HOME
              NavigationTextButton(
                onTap: () => scrollTo(homeKey),
                text: 'Home',
              ),

              /// ✅ PROJECTS
              NavigationTextButton(
                onTap: () => scrollTo(projectKey),
                text: 'Projects',
              ),

              /// ✅ CONTACT
              NavigationTextButton(
                onTap: () => scrollTo(contactKey),
                text: 'Contact',
              ),
            ],
          ),
        );
      },
    );
  }
}