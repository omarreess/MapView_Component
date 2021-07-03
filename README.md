# MapView Component
A Clean Google Map Component Implementing MVVM Build with Flutter SDK ( SOLID Principles & Unit-Testing Applied )


 
## App's Code Architecture
- Code Files separated by Package-by-feature Concept 

- Each layer in MVVM separeated from upper layer , dont know about its Upper Layer ( View -> VM -> Repo )
  VM dont care about View dont have View Reference , Just subscribing with VM's Rx Subject which callback with any updates

- Code is made Testable with dependency injection concept , you can test Repo separately & test VM separately without View 
- Unit Testing is applied in spearte file for testing util functions's logic 
- Logger abstract class is added for tracking process for each logic class
- The project contains a little bit of Over Engineering but it's just a side-project not for commercial use 

</p>
<p float="left">

  <img src="https://github.com/omarreess/MapView_Component/blob/master/screenshot/arch1new.png" width="300" />
   <img src="https://github.com/omarreess/MapView_Component/blob/master/screenshot/arch2new.png" width="350" />  
</p>

 
![alt text](https://github.com/omarreess/MapView_Component/blob/master/screenshot/mvvm.png)


## App's UI Screen
<p float="left">
  <img src="https://github.com/omarreess/MapView_Component/blob/master/screenshot/mapview_ui.jpg" width="315" />
 </p>
 
 
## Code Features 
Some of SOLID Principles applied :

 - D Dependency Inversion Principle as every Function depends on Abstraction & injected by dependent paramter instead of closing it in the scope ,
   it makes the code testable for unit-testing assertion and helps in loosing the tightly coupling 

 - I Interface Segregation Principle as each layer has its own interface that contain only primary functions for Implementer classes ,
   so there on unneeded Override for child classes  

 - S Single-Responsibility Principle as each Function for only one job

 Unit Testing is Added :
 - It tests util funcitons's logic 
 - A Group of testing cases for repaintMarkerIcon() Method is added 
 - Code Coverage isn't high enough , but it covers the important Methods 

 <p float="left">
    <img src="https://github.com/omarreess/MapView_Component/blob/master/screenshot/archtestnew.png" height="150" />  
</p>
 
