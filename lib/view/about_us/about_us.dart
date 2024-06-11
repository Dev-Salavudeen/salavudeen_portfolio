import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/constants.dart';
import '../../view model/getx_controllers/about_us_controller.dart';
import '../../view model/responsive.dart';
import '../projects/components/title_text.dart';
class AboutView extends StatelessWidget {
  AboutView({super.key});
  final controller = Get.put(AboutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'About', title: 'Us'),
          const SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}







