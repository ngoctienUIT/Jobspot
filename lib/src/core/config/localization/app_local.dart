import 'package:flutter/material.dart';
import 'package:jobspot/injection.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jobspot/src/core/config/router/app_router.dart';

class AppLocal {
  AppLocal._();

  static AppRouter get rootRouter => getIt<AppRouter>();

  static BuildContext get context =>
      rootRouter.navigatorKey.currentState!.context;

  static AppLocalizations get text =>
      AppLocalizations.of(rootRouter.navigatorKey.currentState!.context)!;
}
