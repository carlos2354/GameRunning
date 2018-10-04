class Obstacle{
  private int widthRec;
  private int heightRec; 
  private int speed; 
  private int x;
  
  Obstacle(int x, int y){
    this.widthRec=x;
    this.heightRec=y; 
    this.x=width; //ostacle starts at the edege of right screen
    this.speed=5;
  }
  
  void show(int y){
    fill(0,255,0);
    rect(this.x, y,this.widthRec,this.heightRec);
    this.x-= this.speed;
  }
  
  

}
