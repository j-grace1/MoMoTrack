import 'package:flutter/material.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/data/storages/common_storage.dart';
import 'package:vizier/data/storages/token_storage.dart';
import 'package:vizier/ui/main_app.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await DI.instance.setupInjection();
  final bool isFirstLaunch =
      await DI.resolve<CommonStorage>().getIsFirstLaunch();
  final bool isSessionActive = await DI.resolve<TokenStorage>().hasToken();

  runApp(
    MainApp(
      isFirstTimeOpened: isFirstLaunch,
      isSessionActive: isSessionActive,
    ),
  );
}

/*Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.instance.setupInjection();
  final bool isFirstLaunch =
      await DI.resolve<CommonStorage>().getIsFirstLaunch();
  final bool isSessionActive = await DI.resolve<TokenStorage>().hasToken();

  runApp(
    MainApp(
      isFirstTimeOpened: isFirstLaunch,
      isSessionActive: isSessionActive,
    ),
  );
}*/
