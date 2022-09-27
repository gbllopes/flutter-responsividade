import 'package:flutter/material.dart';

import 'web_app_bar_responsive_context.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 72,
      backgroundColor: Colors.black,
      title: Row(children: [
        const Text('Flutter'),
        const SizedBox(
          width: 32,
        ),
        const WebAppBarResponsiveContext(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        const SizedBox(
          width: 24,
        ),
        SizedBox(
          height: 38,
          child: OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Fazer Login',
              style: TextStyle(color: Colors.white),
            ),
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
              color: Colors.white,
              width: 2,
            )),
          ),
        ),
        SizedBox(
          height: 42,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Cadastre-se',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                backgroundColor: Colors.white),
          ),
        )
      ]),
    );
  }
}
