


import 'package:flutter/material.dart';
import 'package:mapview_mvvm/model/constants.dart';
import 'package:rxdart/subjects.dart';

import 'splash_viewmodel.dart';
import 'splash_widgets.dart';

class SplashScreenView extends StatelessWidget {


  late SplashViewModel splashViewModel;

  //view's data
   late  String logoImgPath   ;

  //init ViewModel
  SplashScreenView () {

  splashViewModel = SplashViewModel();
  }

  //subscribing ViewModel's Rx Subject
   Future<void> subscribeViewModelRx() async    {
      splashViewModel.subscribeSubject(
            (newValue){
          logoImgPath = newValue;
         });

   }


 //dispose ViewModel Rx
  void disposeSubject(){
    splashViewModel.disposeSubject();
  }



  @override
  Widget build(BuildContext context) {
    toNextScreen(context);
    return FutureBuilder<void>(
      future:subscribeViewModelRx(),
      builder: (context, snapshot) {
        return  splashBodyWidget(logoImgPath);
      }
    );
  }


//routing to next screen
  void toNextScreen ( BuildContext ctx){

    Future.delayed(const Duration(milliseconds: 3000), () {

      Navigator.pushReplacementNamed(ctx, 'mapview');
      disposeSubject();


    });
  }


}



