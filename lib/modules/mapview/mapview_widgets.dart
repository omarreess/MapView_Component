
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapview_mvvm/config/app_theme.dart';
import 'package:mapview_mvvm/config/constants.dart';
import 'package:mapview_mvvm/modules/mapview/mapview_view_contract.dart';
import 'package:mapview_mvvm/modules/mapview/mapview_viewmodel_contract.dart';

import 'mapview_view.dart';

Widget changePositionBtn (Function incPostion){
  return          FloatingActionButton . extended(
    label:Text('Change Position') ,

    onPressed: incPostion as void Function()?,
    backgroundColor: darkColour,
    icon: Icon(Icons.location_on_outlined , ),


  );
}
Widget appBarWidget(){
  return  AppBar(

    automaticallyImplyLeading : false ,
    centerTitle: true,
    backgroundColor: darkColour,
    title: Image.asset(appbarLogo ,height: 120,width: 110, ),
    elevation: 25.0, // Elevation Shadow


  )
  ;
}

Widget mapWidget(Set<Marker> markersList , Function  initMapController , GoogleMapController? mapController ){
  //safe call on map controller to update Widget Camera Pos
  mapController?.animateCamera(
    CameraUpdate.newCameraPosition(
           CameraPosition(target: markersList.first.position,zoom:16 )

  ),);

  return   GoogleMap(
    onMapCreated: initMapController as void Function(GoogleMapController)?,

    mapType: MapType.hybrid,


    zoomControlsEnabled: false,
     markers: markersList,


    initialCameraPosition: CameraPosition(
      target: markersList.first.position,
      zoom: 14,
    ),
  ) ;
}


Widget loadingWidget() =>
    Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(darkColour),));