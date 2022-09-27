import 'package:estudo_responsividade/breakpoints.dart';
import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildAdvantages(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      );
    }

    Widget buildMobileAdvantages(String title, String subtitle) {
      return Column(
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 16,
          spacing: 8,
          children: [
            constraints.maxWidth > mobileBreakpoint
                ? buildAdvantages('+45.000 alunos', 'Didática garantida')
                : buildMobileAdvantages('+45.000 alunos', 'Didática garantida'),
            constraints.maxWidth > mobileBreakpoint
                ? buildAdvantages('+45.000 alunos', 'Didática garantida')
                : buildMobileAdvantages('+45.000 alunos', 'Didática garantida'),
            constraints.maxWidth > mobileBreakpoint
                ? buildAdvantages('+45.000 alunos', 'Didática garantida')
                : buildMobileAdvantages('+45.000 alunos', 'Didática garantida'),
          ],
        );
      }),
    );
  }
}
