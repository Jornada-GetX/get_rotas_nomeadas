import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Parâmetros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/envioParametros/arguments', arguments: 'Parâmetro enviado por arguments');
                Get.toNamed('/envioParametros/arguments', arguments: {
                  'curso': 'Jornada GetX',
                  'name': 'Renato Alves',
                });
              },
              child: const Text('Arguments'),
            ),
            ElevatedButton(
              onPressed: () {
                final param = Uri.encodeFull('Renato Alves');
                Get.toNamed('/envioParametros/pathParam/$param/jornadaGetX');
              },
              child: const Text('Path Param'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/envioParametros/queryParam?nome=Renato Alves&id=2&curso=Jornada GetX');
                // Get.toNamed('/envioParametros/queryParam', parameters: {
                //   'nome': 'Renato Alves Pereira',
                //   'id': '1',
                //   'curso': 'Jornada Getx',
                // });
              },
              child: const Text('Query Param'),
            ),
          ],
        ),
      ),
    );
  }
}
