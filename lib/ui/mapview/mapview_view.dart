import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapview_mvvm/model/constants.dart';
import 'package:mapview_mvvm/ui/mapview/mapview_viewmodel_implementer.dart';
import 'package:mapview_mvvm/util/repaint_marker_ic.dart';
import 'package:rxdart/subjects.dart';

import 'mapview_view_contract.dart';
import 'mapview_widgets.dart';

class MapViewScreen extends StatelessWidget  implements MapViewViewContract{

  //
  Future? subscriptionVmIsDone;
  late BehaviorSubject markersListStream ;
  late MapViewViewModelImplementer mapViewModel;
  GoogleMapController? mapController     ;





  MapViewScreen(){
    mapViewModel= MapViewViewModelImplementer();
    markersListStream= BehaviorSubject<Set<Marker>>();
    subscriptionVmIsDone = subscribeViewModelSubject();



}
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: changePositionBtn(changeMarkerPosition),
      appBar: appBarWidget() as PreferredSizeWidget?,
      body:
      FutureBuilder(
        future: subscriptionVmIsDone,
       builder :(BuildContext context,   snapshot) {
          return  StreamBuilder(
            stream: markersListStream.stream,
            builder:(BuildContext context, snapshot) {
                if(snapshot.hasData){

                  return  mapWidget( snapshot.data as Set<Marker>  ,  initMapController , mapController);
              }
              return loadingWidget();
            }
            ,);

       }

      )
  ,
    );


  }

  @override
  void changeMarkerPosition() {
         mapViewModel.changeMarkerPosition();
   }

  @override
  void disposeRxSubjects() {
    markersListStream.close();
    mapViewModel.disposeSubjects();
  }

  @override
  Future<void> subscribeViewModelSubject() {
    return mapViewModel.subscribeVmSubjects((list){markersListStream.sink.add(list) ;});

  }

  //initialize mapController with MapController of the map once it's created
  void initMapController(GoogleMapController controller) {
    mapController = controller;
  }


}


