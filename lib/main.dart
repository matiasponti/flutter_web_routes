import 'package:flutter/material.dart';
import 'package:flutter_web_course/locator.dart';
import 'package:flutter_web_course/router/route_generator.dart';
import 'package:flutter_web_course/router/router.dart';
import 'package:flutter_web_course/services/navigator_service.dart';
import 'package:flutter_web_course/ui/layout/main_layout_page.dart';

void main() {
  setUp();
  Flurorouter.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationServices>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
