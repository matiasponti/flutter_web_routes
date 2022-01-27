import 'package:fluro/fluro.dart';
import 'package:flutter_web_course/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    //stateful routes
    router.define('/stateful/:base',
        handler: statefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: statefulHandler, transitionType: TransitionType.fadeIn);

    // providers route
    router.define('/provider',
        handler: providerHandler, transitionType: TransitionType.fadeIn);
    router.define('/dashboard/:users/:roleid',
        handler: dashboardUserHandler, transitionType: TransitionType.fadeIn);
// 404 page notFound
    router.notFoundHandler = pageNotFound;
  }
}
