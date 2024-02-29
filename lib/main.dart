import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvm_hj/res/Routes/routes%20name.dart';
import 'package:getx_mvvm_hj/res/Routes/routes.dart';
import 'package:getx_mvvm_hj/res/languages/localization.dart';
import 'package:getx_mvvm_hj/view/SplashScreen.dart';
import 'package:hive/hive.dart';
import "package:path_provider/path_provider.dart";


Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationCacheDirectory();
   Hive.init(directory.path);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      getPages: Routes.appRoutes(),
      translations: languages(),
      locale: Locale('en' , "US"),
    );
  }
}
