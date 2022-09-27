import 'package:estudo_responsividade/breakpoints.dart';
import 'package:estudo_responsividade/pages/home/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
              aspectRatio: 3.2,
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 3.4,
                    child: Image.network(
                      'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      left: 50,
                      top: 50,
                      child: Card(
                          elevation: 8,
                          color: Colors.black,
                          child: Container(
                            padding: const EdgeInsets.all(22),
                            width: 450,
                            child: Column(
                              children: const [
                                Text(
                                  'Aprenda Flutter com este curso',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Bora aprender flutter com o professor Daiel Ciolfi Cursos por apenas R\$22,90. Qualidade garantida.',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                CustomSearchField()
                              ],
                            ),
                          )))
                ],
              ));
        }
        if (constraints.maxWidth > mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 20,
                    child: Card(
                        elevation: 8,
                        color: Colors.black,
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          width: 350,
                          child: Column(
                            children: const [
                              Text(
                                'Aprenda Flutter com este curso',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Bora aprender flutter com o professor Daiel Ciolfi Cursos por apenas R\$22,90. Qualidade garantida.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              SizedBox(height: 8),
                              CustomSearchField()
                            ],
                          ),
                        )))
              ],
            ),
          );
        }
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.2,
              child: Image.network(
                'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Aprenda Flutter com este curso',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Bora aprender flutter com o professor Daiel Ciolfi Cursos por apenas R\$22,90. Qualidade garantida.',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  CustomSearchField()
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
