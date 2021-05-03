import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'model/constants.dart';
import 'model/repo/markers_repo.dart';
import 'ui/mapview/mapview_viewmodel_implementer.dart';


void main() async {
  //to Locking Screen in Portrait Mode

  await WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) {
    runApp(new MyApp());
  });

 }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //App Screen roots located in Constant file in Model layer
      routes: appRoutes,
      initialRoute: 'splash',

      debugShowCheckedModeBanner: false,
      title: 'MapView',
      theme: ThemeData(

        //primaryColor: darkColour,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     );
  }
}
