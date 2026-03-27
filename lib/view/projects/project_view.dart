import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salavudeen_portfolio/view/home/scroll_controller.dart';
import '../../res/constants.dart';
import '../../view model/getx_controllers/projects_controller.dart';
import '../../view model/responsive.dart';
import 'components/projects_grid.dart';
import 'components/title_text.dart';
class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isLargeMobile(context))const SizedBox(
              height: defaultPadding,
            ),
            const TitleText(prefix: 'My', title: 'Projects'),
            const SizedBox(
              height: defaultPadding,
            ),
            Responsive(
                desktop: ProjectGrid(crossAxisCount: 3,),
                extraLargeScreen: ProjectGrid(crossAxisCount: 4,),
                largeMobile: ProjectGrid(crossAxisCount: 1,ratio: 1.8),
                mobile: ProjectGrid(crossAxisCount: 1,ratio: 1.5),
                tablet: ProjectGrid(ratio: 1.4,crossAxisCount: 2,))
          ],
        ),
    );
  }
}







