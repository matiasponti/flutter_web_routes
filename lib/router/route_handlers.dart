// handlers

import 'package:fluro/fluro.dart';
import 'package:flutter_web_course/ui/views/counter_provider_view.dart';
import 'package:flutter_web_course/ui/views/counter_view.dart';
import 'package:flutter_web_course/ui/views/view_404.dart';

final Handler statefulHandler = Handler(handlerFunc: (context, params) {
  return CounterView(
    base: params['base']?[0] ?? '5',
  );
});
final Handler providerHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(
    base: params['q']?[0] ?? '50',
  );
});

final Handler dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return View404();
});

final Handler pageNotFound =
    Handler(handlerFunc: (context, params) => View404());
