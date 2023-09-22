import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/inicial/page1');
              },
              child: const Text('Inicial'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/paginaquenaoexiste');
              },
              child: const Text('Página que não existe.'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/envioParametros');
              },
              child: const Text('Envio de parâmetros'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/middlewares');
              },
              child: const Text('Middleares'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/nestedNavigation');
              },
              child: const Text('Nested Navigation'),
            ),
          ],
        ),
      ),
    );
  }
}
