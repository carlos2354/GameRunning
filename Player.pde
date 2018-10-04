class Player{
  private int posX; //position x of the main
  private int posY; // position y of the main
  private int size; // player size
  private int ground; //ground level
  private int startPosY; 
  
  
  private int gravity=5; 
  private int jumpcounter=0;
  private int jumpLimit=25;
  private boolean InAir=false;
  private boolean isJumping=false;
  
  
  public Player(int posX, int posY, int size){
    this.posX=posX;
    this.posY=posY;
    this.size=size;
    this.ground=this.posY+this.size;
    this.startPosY=posY;
  }
  
  void display(){
    stroke(22, 85, 60);
    fill(200, 240, 165);
    rect(this.posX, this.posY, size, size);
  }
  
  void jump(){
    if (InAir==false){
      isJumping=true; //trigger player jump
    }
  }
  void up(){
    if(this.posY< this.startPosY){
      this.posY+=this.gravity; 
      println(this.posY);
      InAir=true; 
    }else{
      InAir=false; //main go back to ground level, change to false 
    }
    
    if (isJumping){
      this.posY+=-10; //((-10) >gravity to jump up 
      //println(this.posY);
      jumpcounter+=1;
    } 
    if (jumpcounter>jumpLimit){
      isJumping=false; // when main reach to certain high, change to false to force the main go back
      jumpcounter=0; //reset a counter
    }   
  }
  
  void other(){}
} 
