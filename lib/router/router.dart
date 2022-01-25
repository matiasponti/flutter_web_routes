import 'package:fluro/fluro.dart';
import 'package:flutter_web_course/ui/views/counter_provider_view.dart';
import 'package:flutter_web_course/ui/views/counter_view.dart';
import 'package:flutter_web_course/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/stateful/:base',
        handler: _statefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _statefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _providerHandler, transitionType: TransitionType.fadeIn);
    router.define('/dashboard/:users/:roleid',
        handler: _dashboardUserHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFound;
  }

// handlers

  static Handler _statefulHandler = Handler(handlerFunc: (context, params) {
    return CounterView(
      base: params['base']?[0] ?? '5',
    );
  });
  static Handler _providerHandler = Handler(handlerFunc: (context, params) {
    print(params);
    return CounterProviderView(
      base: params['q']?[0] ?? '50',
    );
  });

  static Handler _dashboardUserHandler =
      Handler(handlerFunc: (context, params) {
    print(params);
    return View404();
  });

  static Handler _pageNotFound =
      Handler(handlerFunc: (context, params) => View404());
}
