

class MapViewViewModelContract {





  //allow to Subscribe VM RxSubjects
  Future<void> subscribeVmSubjects(Function fun ){}
  //subscribe to Repo RxSubjects
  Future<void> subscribeRepoSubject(){}
  //dispose RxSubjects
  void disposeSubjects(){}


  //binding marker icon + repainting with new size
  Future<void> bindMarkerIcon(){}


  //change one of Repo's Markers Position
  void changeMarkerPosition (){}

}