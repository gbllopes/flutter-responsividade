import 'package:estudo_responsividade/breakpoints.dart';
import 'package:flutter/material.dart';

import '../course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth > tabletBreakpoint ? 0 : 16),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 16,
              mainAxisSpacing: 25),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (ctx, idx) => const CourseItem());
    }));
  }
}
