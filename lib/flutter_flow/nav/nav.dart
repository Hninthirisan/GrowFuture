import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

import '/backend/supabase/supabase.dart';
import '../../auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomeWidget() : IntroWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomeWidget() : IntroWidget(),
        ),
        FFRoute(
          name: 'NavPage',
          path: '/navPage',
          builder: (context, params) => NavPageWidget(),
        ),
        FFRoute(
          name: 'a-list-IndoorPlants',
          path: '/aListIndoorPlants',
          builder: (context, params) => AListIndoorPlantsWidget(),
        ),
        FFRoute(
          name: 'b-list-OutdoorPlants',
          path: '/bListOutdoorPlants',
          builder: (context, params) => BListOutdoorPlantsWidget(),
        ),
        FFRoute(
          name: 'c-list-Crops',
          path: '/cListCrops',
          builder: (context, params) => CListCropsWidget(),
        ),
        FFRoute(
          name: 'd-list-Vegetables',
          path: '/dListVegetables',
          builder: (context, params) => DListVegetablesWidget(),
        ),
        FFRoute(
          name: 'e-list-Fruits',
          path: '/eListFruits',
          builder: (context, params) => EListFruitsWidget(),
        ),
        FFRoute(
          name: 'g-list-Insects',
          path: '/gListInsects',
          builder: (context, params) => GListInsectsWidget(),
        ),
        FFRoute(
          name: 'h-list-Pesticides',
          path: '/hListPesticides',
          builder: (context, params) => HListPesticidesWidget(),
        ),
        FFRoute(
          name: 'f-list-Fertilizers',
          path: '/fListFertilizers',
          builder: (context, params) => FListFertilizersWidget(),
        ),
        FFRoute(
          name: 'a-detail-IndoorPlant',
          path: '/aDetailIndoorPlant',
          builder: (context, params) => ADetailIndoorPlantWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'b-detail-OutdoorPlant',
          path: '/bDetailOutdoorPlant',
          builder: (context, params) => BDetailOutdoorPlantWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'c-detail-Crops',
          path: '/cDetailCrops',
          builder: (context, params) => CDetailCropsWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'd-detail-Vegetables',
          path: '/dDetailVegetables',
          builder: (context, params) => DDetailVegetablesWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'e-detail-Fruits',
          path: '/eDetailFruits',
          builder: (context, params) => EDetailFruitsWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'f-detail-Fertilizers',
          path: '/fDetailFertilizers',
          builder: (context, params) => FDetailFertilizersWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'g-detail-Insects',
          path: '/gDetailInsects',
          builder: (context, params) => GDetailInsectsWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'h-detail-Pesticides',
          path: '/hDetailPesticides',
          builder: (context, params) => HDetailPesticidesWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'a-form-IndoorPlant',
          path: '/aFormIndoorPlant',
          builder: (context, params) => AFormIndoorPlantWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'a-NAME-IndoorPlants',
          path: '/aNAMEIndoorPlants',
          builder: (context, params) => ANAMEIndoorPlantsWidget(),
        ),
        FFRoute(
          name: 'b-NAME-OutdoorPlants',
          path: '/bNAMEOutdoorPlants',
          builder: (context, params) => BNAMEOutdoorPlantsWidget(),
        ),
        FFRoute(
          name: 'c-NAME-Crops',
          path: '/cNAMECrops',
          builder: (context, params) => CNAMECropsWidget(),
        ),
        FFRoute(
          name: 'd-NAME-Vegetables',
          path: '/dNAMEVegetables',
          builder: (context, params) => DNAMEVegetablesWidget(),
        ),
        FFRoute(
          name: 'e-NAME-Fruits',
          path: '/eNAMEFruits',
          builder: (context, params) => ENAMEFruitsWidget(),
        ),
        FFRoute(
          name: 'f-NAME-Fertilizers',
          path: '/fNAMEFertilizers',
          builder: (context, params) => FNAMEFertilizersWidget(),
        ),
        FFRoute(
          name: 'g-NAME-Insects',
          path: '/gNAMEInsects',
          builder: (context, params) => GNAMEInsectsWidget(),
        ),
        FFRoute(
          name: 'h-NAME-Pesticides',
          path: '/hNAMEPesticides',
          builder: (context, params) => HNAMEPesticidesWidget(),
        ),
        FFRoute(
          name: 'b-form-OutdoorPlant',
          path: '/bFormOutdoorPlant',
          builder: (context, params) => BFormOutdoorPlantWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'c-form-Crops',
          path: '/cFormCrops',
          builder: (context, params) => CFormCropsWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'd-form-Vegetables',
          path: '/dFormVegetables',
          builder: (context, params) => DFormVegetablesWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'e-form-Fruits',
          path: '/eFormFruits',
          builder: (context, params) => EFormFruitsWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'f-form-Fertilizers',
          path: '/fFormFertilizers',
          builder: (context, params) => FFormFertilizersWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'g-form-Insects',
          path: '/gFormInsects',
          builder: (context, params) => GFormInsectsWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'h-form-Pesticides',
          path: '/hFormPesticides',
          builder: (context, params) => HFormPesticidesWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'i-NAME-Nutrients',
          path: '/iNAMENutrients',
          builder: (context, params) => INAMENutrientsWidget(),
        ),
        FFRoute(
          name: 'j-NAME-Soil',
          path: '/jNAMESoil',
          builder: (context, params) => JNAMESoilWidget(),
        ),
        FFRoute(
          name: 'k-NAME-Weather',
          path: '/kNAMEWeather',
          builder: (context, params) => KNAMEWeatherWidget(),
        ),
        FFRoute(
          name: 'ProfilePage',
          path: '/profilePage',
          builder: (context, params) => ProfilePageWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: 'Library',
          path: '/library',
          builder: (context, params) => LibraryWidget(),
        ),
        FFRoute(
          name: 'ContactUs',
          path: '/contactUs',
          builder: (context, params) => ContactUsWidget(),
        ),
        FFRoute(
          name: 'FAQ',
          path: '/faq',
          builder: (context, params) => FaqWidget(),
        ),
        FFRoute(
          name: 'BookMark',
          path: '/bookMark',
          builder: (context, params) => BookMarkWidget(),
        ),
        FFRoute(
          name: 'AboutUs',
          path: '/aboutUs',
          builder: (context, params) => AboutUsWidget(),
        ),
        FFRoute(
          name: 'Share',
          path: '/share',
          builder: (context, params) => ShareWidget(),
        ),
        FFRoute(
          name: 'EditProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget(
            userName: params.getParam('userName', ParamType.String),
            image: params.getParam('image', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'RequestToBeAdmin',
          path: '/requestToBeAdmin',
          builder: (context, params) => RequestToBeAdminWidget(),
        ),
        FFRoute(
          name: 'intro',
          path: '/intro',
          builder: (context, params) => IntroWidget(),
        ),
        FFRoute(
          name: 'LogIn',
          path: '/logIn',
          builder: (context, params) => LogInWidget(),
        ),
        FFRoute(
          name: 'Register',
          path: '/register',
          builder: (context, params) => RegisterWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/intro';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primary,
                  child: Image.asset(
                    'assets/images/GrowFuture_Logo.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 0),
      );
}
