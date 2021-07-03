import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapview_mvvm/config/constants.dart';
import 'package:mapview_mvvm/model/pojo/marker_pojo.dart';
import 'package:mapview_mvvm/util/logger.dart';
import 'package:rxdart/subjects.dart';

class MarkersRepo extends Logger {
  /*
  I'm using List<> here not Set<> for collection , cause I need to insert by index
  and Set<> is unordered structured
  */

//rx Subjects
  late BehaviorSubject markerModelsSubject;
  List? markerModelsList;
  //increment var
  double _incVar = 0.02;
  //for Logger util
  String className = 'MarkersRepo';

  
  //init
  MarkersRepo() {
    markerModelsSubject = BehaviorSubject<List<Marker>?>();
    markerModelsList = List<Marker>.empty(growable: true);
    initData();
  }

  //getting data from constants
  void initData() {
    markerModelsList!
      ..add(Marker(
        markerId: MarkerId(markterPostions0.toString()),
        position: markterPostions0,
      ))
      ..add(Marker(
          markerId: MarkerId(markterPostions1.toString()),
          position: markterPostions1))
      ..add(Marker(
          markerId: MarkerId(markterPostions2.toString()),
          position: markterPostions2))
      ..add(Marker(
          markerId: MarkerId(markterPostions3.toString()),
          position: markterPostions3))
      ..add(Marker(
          markerId: MarkerId(markterPostions4.toString()),
          position: markterPostions4));
    updateSubject(markerModelsList);
  }

  //increment 1st marker's position to be changed
  void incMarkerPosition() {
    markterPostions0 = LatLng(51.807979 - _incVar, 10.340948 + _incVar);

    //logger util
    printMsg('marker postion is updated :${markterPostions0.toString()} ',
        'incMarkerPosition');

    markerModelsList!.removeAt(0);
    markerModelsList!.insert(
        0,
        Marker(
          markerId: MarkerId(markterPostions0.toString()),
          position: markterPostions0,
        ));

    updateSubject(markerModelsList);
    _incVar += 0.002;
  }

  void subscribeSubject(Function function) async {
    markerModelsSubject.stream.listen(function as void Function(dynamic)?);
    //logger util
    printMsg('rx subject is listening', 'subscribeSubject');
  }

  void updateSubject(List? markerModelsList) {
    markerModelsSubject.add(markerModelsList);
    //logger util
    printMsg('list updated : ${markerModelsList.toString()}', 'updateSubject');
  }

  void disposeSubject() {
    markerModelsSubject.close();
    //logger util
    printMsg('rx subject is disposed', 'disposeSubject');
  }
}
