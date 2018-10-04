Player main; 
Obstacle[] obstacle= new Obstacle[400]; 

int timer=0;
void setup(){
  size(1000,600);
  main=new Player(150,525 ,50); //coordinate x and y of the player and player's size
  for (int i=0; i<obstacle.length; i++){
    obstacle[i]= new Obstacle(50,80);
  }
}

void draw(){
  //background
  backGround();  
  
  //obstacles
  showOstacle(); //based on timer to display obstacle

  
  //player
  main.display();
  main.up();
  //timer
  timer();
}
void backGround(){
  background(225);
}
void keyPressed(){
  if (key==' '){
    main.jump(); 
  }
}
void timer(){
  timer+=1;
  //println(timer); 
}

void showOstacle(){
   if (timer>50){
      obstacle[1].show(495); 
   }
   if (timer>150){
      obstacle[2].show(495); 
   }
 }
