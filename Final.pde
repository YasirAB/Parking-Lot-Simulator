final static ArrayList<Car> carP = new ArrayList();  
final static ArrayList<Car> carG = new ArrayList(); 
PImage Car0; 
  Date d = new Date(0,0,0,true); 
  int timer; 
  int Timer; 
  double cost=0;
  double totalProfit; 
  Car c; 
  int spaces = 60; 
  double rate; 
  int ellapsed; 
  int customers; 
  ControlPanel CP; 
  ParkingLot p; 
  Street n; 
  Street s; 
   
   
  void setup () 
  {  
    size(1000,1000); 
    background(0,160,0); 
    p = new ParkingLot(); 
    n = new Street(0,160); 
    s = new Street(0,850); 
    Car0 = loadImage("Car.jpg"); 
    c = new Car(Car0); 
    timer = millis(); 
    Timer = millis(); 
     
     
    
   
  } 
  void draw() 
  { 
    if(d.hour1>=8 && d.hour1<=20) 
    { 
      background(0,160,0); 
      fill(0); 
      strokeWeight(3); 
      stroke(0); 
      rect(875,50,120,50); 
      fill(250,230,0); 
      ellipse(935,75,40,40); 
    } 
    else 
    { 
      background(#2A8916); 
      fill(46,39,121); 
      strokeWeight(3); 
      stroke(0); 
      rect(875,50,120,50); 
      fill(237, 233, 189); 
      ellipse(935,75,40,40); 
      fill(46, 39,121); 
      noStroke(); 
      ellipse(955,75,40,40); 
    } 
    s.drawSt(); 
    n.drawSt(); 
    p.drawLot(); 
    CP = new ControlPanel(d); 
     
    if(millis()>timer) 
    { 
      timer = millis(); 
      d.addMinute(); 
      CP.drawTime(); 
    } 
     
    CP.dControlPanel(); 
     
     
   int r = int(random(2)); 
   for(Car c: carP) c.drawCara(); 
   for(Car c: carG) c.drawCarb(); 
   if(spaces!=0) 
   { 
     if(r==2) 
     { 
       if(millis()>Timer+random(500,2500)) 
       { 
         Timer = millis(); 
         carP.add(new Car(Car0)); 
       } 
     } 
   } 
   if(r!=2) 
   { 
     if(millis()>Timer+random(500,2500)) 
     { 
       Timer = millis(); 
       carG.add(new Car(Car0)); 
     } 
   } 
  } 
  void mousePressed() 
   { 
     if(looping) noLoop(); 
     else loop(); 
   } 
 
 
 
 
 
 
