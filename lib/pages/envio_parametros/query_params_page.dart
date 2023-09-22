import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamsPage extends StatelessWidget {
  const QueryParamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Query Params'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Get.parameters['nome'] ?? 'nome não encontrado'),
            Text(Get.parameters['id'] ?? 'id não encontrado'),
            Text(Get.parameters['curso'] ?? 'curso não encontrado'),
          ],
        ),
      ),
    );
  }
}
