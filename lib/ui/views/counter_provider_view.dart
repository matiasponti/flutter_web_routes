import 'package:flutter/material.dart';
import 'package:flutter_web_course/providers/counter_provider.dart';
import 'package:flutter_web_course/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_course/ui/shared/custom_flat_button.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  CounterProviderView({Key? key, required this.base}) : super(key: key);
  int counter = 13;

  final String base;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(base),
        child: const _CounterProviderViewBody());
  }
}

class _CounterProviderViewBody extends StatelessWidget {
  const _CounterProviderViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador provider',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: ${counterProvider.counter}',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
                text: 'Incrementar',
                onPressed: () {
                  counterProvider.increment();
                }),
            CustomFlatButton(
                text: 'Decrementar',
                color: Colors.blue,
                onPressed: () {
                  counterProvider.decrement();
                }),
          ],
        ),
      ],
    );
  }
}
