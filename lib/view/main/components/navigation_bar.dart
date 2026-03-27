import 'package:flutter/material.dart';
import 'package:salavudeen_portfolio/view/main/components/drawer/drawer.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import '../../intro/components/side_menu_button.dart';
import 'connect_button.dart';
import 'navigation_button_list.dart';
class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!Responsive.isLargeMobile(context))
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Builder(
                builder: (context) => MenuButton(
                  onTap: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child:!Responsive.isLargeMobile(context)? Image.asset('assets/images/triange_icon.png') : MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2,),
          if(!Responsive.isLargeMobile(context))  const NavigationButtonList(),
          const Spacer(flex: 2,),
          const ConnectButton(),
          const Spacer(),
        ],
    );
  }
}
