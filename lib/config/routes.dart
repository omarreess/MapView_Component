 
import 'package:flutter/widgets.dart';
 
import 'package:mapview_mvvm/modules/mapview/mapview_view.dart';
import 'package:mapview_mvvm/modules/splash/splash_view.dart';


Map<String, WidgetBuilder> appRoutes = {
  splashScreenRoute: (ctx) => SplashScreenView(),
  mapViewRoute: (ctx) => MapViewScreen(),
 
};

// App routes names
   String splashScreenRoute = "/splash";
   String mapViewRoute = "/mapview";
 


 
