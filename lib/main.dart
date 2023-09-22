import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/arguments_param_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/envio_parametros_home_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/path_param_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/query_params_page.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/inicial/inicial_page1.dart';
import 'package:get_rotas_nomeadas/pages/middleares/acesso_negado.dart';
import 'package:get_rotas_nomeadas/pages/middleares/middleares_home_page.dart';
import 'package:get_rotas_nomeadas/pages/middleares/route_middleares.dart';
import 'package:get_rotas_nomeadas/pages/nested_navigation/home_nested_navigation.dart';
import 'package:get_rotas_nomeadas/pages/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routingCallback: (Routing? routing) {
        debugPrint(routing?.previous);
        debugPrint(routing?.current);
      },
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/inicial/page1',
          page: () => const InicialPage1(),
        ),
        GetPage(
          name: '/envioParametros',
          page: () => const EnvioParametrosHomePage(),
          children: [
            GetPage(name: '/arguments', page: () => const ArgumentsParamPage()),
            // Obrigatoriamente precisa passar um nome, para se chegar na URL
            GetPage(name: '/pathParam/:nome/jornadaGetX', page: () => const PathParamPage()),
            GetPage(name: '/queryParam', page: () => const QueryParamsPage()),
          ],
        ),
        GetPage(
          name: '/middlewares',
          page: () => MiddlearesHomePage(),
          middlewares: [
            RouteMiddleares(),
          ],
        ),
        GetPage(name: '/accessDenied', page: () => const AcessoNegado()),
        GetPage(name: '/nestedNavigation', page: () => HomeNestedNavigation()),
      ],
      unknownRoute: GetPage(
        name: '/404',
        page: () => const RotaNaoEncontradaPage(),
      ),
    );
  }
}
