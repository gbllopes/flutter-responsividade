import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 900),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5wG2IWqOy24X4_sTGVQ9nF2k0LnUcEKLvRA&usqp=CAU',
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(height: 5),
          const Expanded(
            child: AutoSizeText(
              'Criação de apps Android e Ios com Flutter - Crie 16 Apps',
              minFontSize: 3,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            'Gabriel Lopes',
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          const Text(
            'R\$ 22,90',
            style: TextStyle(fontSize: 16, color: Colors.white),
          )
        ],
      ),
    );
  }
}
