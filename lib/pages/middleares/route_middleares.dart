import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddleares extends GetMiddleware {
  RouteMiddleares({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando middleares: onPageCalled');
    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('Executando middleares: onPageBuilt');
    // return super.onPageBuilt(page);
    return Theme(
      data: ThemeData.dark(),
      child: page,
    );
  }

  @override
  RouteSettings? redirect(String? route) {
    if (route == '/middlewares') {
      return const RouteSettings(
        name: '/accessDenied',
      );
    }
    return null;
  }

  @override
  void onPageDispose() {
    debugPrint('Executando middleares: onPageDispose');
    super.onPageDispose();
  }
}
