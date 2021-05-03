



// Markers data ---
// we Stored as a const not final so we just making one place in memory even it allocates again
// we make transformed from  immutable state to mutable

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapview_mvvm/ui/mapview/mapview_view.dart';
import 'package:mapview_mvvm/ui/splash/splash_view.dart';

var markterPostions0 = const LatLng(51.807979, 10.340948);
final markterPostions1 = const LatLng(51.807768, 10.341856);
final markterPostions2 = const LatLng(51.807204, 10.342045);
final markterPostions3 = const LatLng(51.808285, 10.341562);
final markterPostions4 = const LatLng(51.808013, 10.342656);

final markerIconImgPath = 'assets/marker_icon.png';
final appLogoImg = 'assets/logo.png';
final appbarLogo = 'assets/appbar_logo.png';
final darkColour = Color.fromRGBO(41,41,41, 1);
final greyColour = Color.fromRGBO(165,165,165, 1);



// App Screen Routes ---

final appRoutes =  {
  'splash': (context) => SplashScreenView(),

  'mapview': (context) => MapViewScreen(),
};


