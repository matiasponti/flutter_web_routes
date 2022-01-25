import 'package:flutter/material.dart';
import 'package:flutter_web_course/services/navigator_service.dart';
import 'package:flutter_web_course/ui/shared/custom_flat_button.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  CustomAppMenu({Key? key}) : super(key: key);

  final navigatorGetIt = locator<NavigationServices>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TabletDesktopMenu(navigatorGetIt: navigatorGetIt)
            : _MobileMenu(navigatorGetIt: navigatorGetIt);
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
    required this.navigatorGetIt,
  }) : super(key: key);

  final NavigationServices navigatorGetIt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador stateful',
            onPressed: () => navigatorGetIt.navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador con provider',
            onPressed: () => navigatorGetIt.navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            onPressed: () => navigatorGetIt.navigateTo('/abc123'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Stateful 300',
            onPressed: () => navigatorGetIt.navigateTo('/stateful/300'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Provider 200',
            onPressed: () => navigatorGetIt.navigateTo('/provider?q=200'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
    required this.navigatorGetIt,
  }) : super(key: key);

  final NavigationServices navigatorGetIt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador stateful',
            onPressed: () => navigatorGetIt.navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador con provider',
            onPressed: () => navigatorGetIt.navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            onPressed: () => navigatorGetIt.navigateTo('/abc123'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
