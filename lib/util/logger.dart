import 'dart:developer';

///   Abstract Logger Class for implementing it in each Logic Class
///   for tracking  the process

abstract class Logger {
  //typt your class name when implemnting this class
  late String className;

  //A Concrete Method to print data message with its Class & Function name
  void printMsg(String message, String funName) {
    log("$message", name: "class: $className function: $funName");
  }
}

///For client usage . . use it like this
/*
   class Client extends Logger{

   String className = "Client"  ;

   test() => printMsg('msg' ,'test');
   
  }
  */
