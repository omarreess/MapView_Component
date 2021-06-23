# MapView Component
A Clean Google Map Component Implementing MVVM Build with Flutter SDK ( SOLID Principles Used )


 
## App's Code Architecture
- Code Files separated by Package-by-feature Concept 

- Each layer in MVVM separeated from upper layer , dont know about its Upper Layer ( View -> VM -> Repo )
  VM dont care about View dont have View Reference , Just subscribing with VM's Rx Subject which callback with any updates

- Testing is so easly , you can test Repo separately & test VM separately without View 

</p>
<p float="left">

  <img src="https://github.com/omarreess/MapView_Component/blob/master/screenshot/mvvm%20arch1.png" width="350" />
   <img src="https://github.com/omarreess/MapView_Component/blob/master/screenshot/mvvm%20arch3.png" width="350" />  
</p>

![alt text](https://github.com/omarreess/MapView_Component/blob/master/screenshot/mvvm.png)


## App's UI Screen
<p float="left">
  <img src="https://github.com/omarreess/MapView_Component/blob/master/screenshot/mapview_ui.jpg" width="315" />
 </p>
 
 
## Code Features 
Some of SOLID Principles applied :

 - D Dependency Inversion Principle as every Function depends on Abstraction & injected by dependent paramter instead of closing it in the scope ,
   it makes the code testable for unit-testing assertion 

 - I Interface Segregation Principle as each layer has its own interface that contain only primary functions for Implementer classes ,
   so there on unneeded Override for child classes  

 - S Single-Responsibility Principle as each Function for only one job
 

 
 
 
