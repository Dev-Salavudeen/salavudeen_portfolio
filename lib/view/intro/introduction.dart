import 'package:flutter/material.dart';
import 'package:salavudeen_portfolio/view/home/scroll_controller.dart';
import '../../view model/responsive.dart';
import 'components/intro_body.dart';
import 'components/side_menu_button.dart';
import 'components/social_media_list.dart';
class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.01,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.02,
            ),
            if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.07,
            ),
            const Expanded(
              child: IntroBody(),
            ),
          ],
        ),
    );
  }
}



