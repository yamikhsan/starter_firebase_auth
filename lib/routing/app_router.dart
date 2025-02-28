import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_firebase_auth/data/firebase_auth_repository.dart';
import 'package:starter_firebase_auth/features/sign_in_page.dart';

import 'go_router_refresh_stream.dart';

part 'app_router.g.dart';

enum AppRoute { signIn, profile }

@riverpod
GoRouter goRouter(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return GoRouter(
    initialLocation: '/signIn',
    debugLogDiagnostics: true,
    redirect: (context, state){
      final isLoggedIn = authRepository.currentUser != null;
      if(isLoggedIn) return '/profile';
      return '/signIn';
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      GoRoute(
        path: '/signIn',
        name: AppRoute.signIn.name,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: SignInPage()),
      ),
      GoRoute(
        path: '/profile',
        name: AppRoute.profile.name,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: ProfileScreen()),
      ),
    ],
  );
}
