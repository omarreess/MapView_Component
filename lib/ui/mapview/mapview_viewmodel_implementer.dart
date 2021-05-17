import 'dart:core';
import 'dart:core';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapview_mvvm/model/constants.dart';
import 'package:mapview_mvvm/model/repo/markers_repo.dart';
import 'package:mapview_mvvm/util/repaint_marker_ic.dart';
import 'package:rxdart/subjects.dart';

import 'mapview_viewmodel_contract.dart';

  class MapViewViewModelImplementer implements MapViewViewModelContract{

  late MarkersRepo markersRepo;
  Future? _subscriptionRepoIsDone;
  Future? _bindingMarkerIconIsDone;
  late BitmapDescriptor markerIcon;

  //rx Subjects
  late BehaviorSubject markersRepoSubject  ;

  void disposeVmSubjects(){}
  void disposeRepoSubjects(){}

  MapViewViewModelImplementer (){

    markersRepo= MarkersRepo();
    markersRepoSubject = BehaviorSubject<Set<Marker>>();
    _bindingMarkerIconIsDone = bindMarkerIcon();
    _subscriptionRepoIsDone = subscribeRepoSubject();

  }

  @override
  void changeMarkerPosition() {
   markersRepo.incMarkerPosition();  }

  @override
  void disposeSubjects() {
    markersRepo.disposeSubject();
    markersRepoSubject.close();
   }

  @override
  Future<void> subscribeRepoSubject()  async{
    await _bindingMarkerIconIsDone;

   markersRepo.subscribeSubject(
           (event ){


       markersRepoSubject.add(modifyMarkerList(event));
     } );


  }
  //adding to each marker the Binded Marker Icon
  Set<Marker> modifyMarkerList( dynamic oldList){
    Set<Marker> newMarkersList=Set<Marker>();

    (oldList as List ).forEach((element) {
      newMarkersList.add(
          Marker(markerId:( element as Marker).markerId , icon: markerIcon , position:  element.position ));
    }
    );
    return newMarkersList;
  }
  @override
 Future<void>   subscribeVmSubjects(Function fun) async {
    await _subscriptionRepoIsDone;
    return markersRepoSubject.stream.listen(fun as void Function(dynamic)?).asFuture();
   }


  @override
  Future<void> bindMarkerIcon() {
   return getMarkerIconResized(markerIconImgPath).then((value) {
      markerIcon=value;
    }
    );  }
}