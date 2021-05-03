
//Pojo Data class for Marker's Data

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerModel {

 String id , title  , iconImg;
 LatLng position;
 double  positionLat, positionLong ;
 BitmapDescriptor icon ;

 MarkerModel(
 {
   @required this.id ,
    this.title ,

   this.position , this.icon , this.iconImg , this.positionLat ,
   this.positionLong
  }
     );



}

