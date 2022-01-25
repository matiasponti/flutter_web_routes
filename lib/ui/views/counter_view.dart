import 'package:flutter/material.dart';
import 'package:flutter_web_course/ui/shared/custom_app_menu.dart';
import 'package:flutter_web_course/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key, this.base}) : super(key: key);

  final String? base;

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (int.tryParse(widget.base!) != null) {
      counter = int.parse(widget.base!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador stateful',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: $counter',
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
                  setState(() {
                    counter++;
                  });
                }),
            CustomFlatButton(
                text: 'Decrementar',
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                }),
          ],
        ),
      ],
    );
  }
}
