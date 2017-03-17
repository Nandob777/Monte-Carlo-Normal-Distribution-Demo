final int NUMDICE = 12; // inputs

void setup(){
  
  size(1000,1000);
  
  background(255);
  fill(0);
  frameRate(100000000);
}

void draw(){
  int dotx = getProb(width);
  int doty = getProb(height);
  
  ellipse(dotx,doty,1,1);
}

int getProb(int number){
  int wnum = number/NUMDICE;
  int result = 0;
  for(int i = 0; i < NUMDICE; i++){
    result += random(wnum);
  }
  return result;
}