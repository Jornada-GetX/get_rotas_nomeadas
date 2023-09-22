import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/pages/apple_page.dart';

import 'pages/android_page.dart';

class HomeNestedNavigation extends StatelessWidget {
  final currentBottomIndex = 0.obs;
  HomeNestedNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Navigation'),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: currentBottomIndex.value,
          onTap: (value) {
            currentBottomIndex(value);
            switch (value) {
              case 0:
                Get.offAllNamed('/', id: 1);
                break;
              case 1:
                Get.offAllNamed('/android', id: 1);
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apple), label: 'Apple'),
            BottomNavigationBarItem(icon: Icon(Icons.android), label: 'Android'),
          ],
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;

          if (settings.name == '/') {
            page = const ApplePage();
            transition = Transition.leftToRight;
          } else if (settings.name == '/android') {
            page = const AndroidPage();

            transition = Transition.rightToLeft;
          } else {
            page = const Center(
              child: Text('Página não encontrada!'),
            );
          }
          transition = Transition.fade;
          return GetPageRoute(page: () => page, transition: transition);
        },
      ),
    );
  }
}
