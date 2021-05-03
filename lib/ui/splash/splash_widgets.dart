import 'package:flutter/material.dart';
import 'package:mapview_mvvm/model/constants.dart';

Widget splashBodyWidget(String logoPath)
{
  return Container(color:darkColour,
    child: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            logoWidget(logoPath),
            //  Divider(height: 20,color: Colors.transparent,),
            progressWidget(),
          ],
        ),
      ),
    ),
  );
}
Widget progressWidget(){
  return
    Container( padding: EdgeInsets.all(15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0),),
      child: LinearProgressIndicator(
        valueColor: AlwaysStoppedAnimation(greyColour),
        minHeight: 2.5,
        backgroundColor: Colors.transparent,
      ),
    );
}
Widget logoWidget(String logoPath){
  return  Padding(
    padding: const EdgeInsets.all(40.0),
    child: Image(image: AssetImage(logoPath) ,

    ),
  );

}