import 'package:flutter/material.dart';

class MiddlearesHomePage extends StatefulWidget {
  MiddlearesHomePage({super.key}){
    debugPrint('Criando página MiddlearesHomePage!!');
  }

  @override
  State<MiddlearesHomePage> createState() => _MiddlearesHomePageState();
}

class _MiddlearesHomePageState extends State<MiddlearesHomePage> {
  @override
  Widget build(BuildContext context) {
    debugPrint('Build pagina MiddlearesHomePage');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Middleware Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Botão'),
        ),
      ),
    );
  }
}
