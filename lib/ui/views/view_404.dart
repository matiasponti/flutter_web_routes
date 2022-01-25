import 'package:flutter/material.dart';
import 'package:flutter_web_course/services/navigator_service.dart';
import 'package:flutter_web_course/ui/shared/custom_flat_button.dart';

import '../../locator.dart';

class View404 extends StatelessWidget {
  View404({Key? key}) : super(key: key);

  final navigatorGetIt = locator<NavigationServices>();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        '404',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        'No se encontro la pagina',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      CustomFlatButton(
        text: 'Regresar',
        onPressed: () => navigatorGetIt.navigateTo('/stateful'),
      ),
    ]));
  }
}
