import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// GoRouter configuration
final _kRouter = GoRouter(
  initialLocation: '/',
  routes: [],
);

/// create a provider to access the go router configuration
final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return _kRouter;
  },
);
