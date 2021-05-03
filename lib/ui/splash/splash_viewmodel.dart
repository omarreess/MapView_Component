


import 'package:mapview_mvvm/model/constants.dart';
import 'package:rxdart/subjects.dart';

class SplashViewModel {




  //getting UI data from constant file from model
  void getViewData (){
    logoImgPath.sink.add(appLogoImg);
   }



  //rx Subjects
  BehaviorSubject logoImgPath  ;

  //init
  SplashViewModel () {
    logoImgPath =   BehaviorSubject<String>() ;
    getViewData();


  }

  void  subscribeSubject (Function function)   {
      logoImgPath.stream.listen(function);
  }

  void updateSubject(String value){
    logoImgPath.add(value) ;
  }


  void disposeSubject(){
    logoImgPath.close();
  }




}