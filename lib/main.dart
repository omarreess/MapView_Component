import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'config/app_theme.dart';
import 'config/routes.dart';
 import 'model/repo/markers_repo.dart';
import 'modules/mapview/mapview_viewmodel_implementer.dart';


void main() async {

  //to Locking Screen in Portrait Mode
  await WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) {
    runApp(  MyApp() );
  });

 }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //App Screen roots located in config/routes file 
      routes: appRoutes,
      initialRoute: splashScreenRoute,

      debugShowCheckedModeBanner: false,
      title: 'MapView',
      theme: appTheme
     );
  }
}
