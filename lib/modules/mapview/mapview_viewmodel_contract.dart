

class MapViewViewModelContract {





  //allow to Subscribe VM RxSubjects
  Future<void> subscribeVmSubjects(Function fun )async {}
  
  //subscribe to Repo RxSubjects
  Future<void> subscribeRepoSubject() async {}
  
  //dispose RxSubjects
  void disposeSubjects(){}


  //binding marker icon + repainting with new size
  Future<void> bindMarkerIcon()async {}


  //change one of Repo's Markers Position
  void changeMarkerPosition (){}

}
