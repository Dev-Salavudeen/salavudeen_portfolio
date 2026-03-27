import 'package:flutter/material.dart';
import 'package:salavudeen_portfolio/view/contact_page.dart';
import 'package:salavudeen_portfolio/view/home/scroll_controller.dart';
import 'package:salavudeen_portfolio/view/main/components/drawer/drawer.dart';
import '../../view model/controller.dart';
import '../intro/introduction.dart';
import '../main/components/navigation_bar.dart';
import '../main/components/navigation_button_list.dart';
import '../projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Column(
          children: [

            /// 🔥 TOP NAVBAR
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),

            /// 🔥 SCROLLABLE CONTENT
            Expanded(
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    Introduction(key: homeKey),
                    ProjectsView(key: projectKey),
                    ContactPage(key: contactKey),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}