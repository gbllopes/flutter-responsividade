import 'package:estudo_responsividade/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:estudo_responsividade/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter/material.dart';

import '../../breakpoints.dart';
import 'widgets/sections/advantages_section.dart';
import 'widgets/sections/courses_section.dart';
import 'widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint
            ? const PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56),
              )
            : const PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(double.infinity, 72),
              ),
        drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection()
                ],
              )),
        ),
      );
    }));
  }
}
